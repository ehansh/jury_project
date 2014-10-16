class Jury < ActiveRecord::Base
  attr_accessible :jury_form_id, :student_id, :measure_group_id, :judge_id

  has_many 	 :jury_forms
  has_and_belongs_to_many :judge
  belongs_to :student
  belongs_to :measure_group

	def self.as_csv(student = nil)
		CSV.generate do |csv|
			measure_groups = MeasureGroup.all
			measure_groups.each do |measure_group|
				csv << [measure_group.name << " Student Juries"]
				#Column Headers
				current_headers = ["Student", "Judge", "Date", "Repertoire", "Final Assessment", "Comments"] #reset headers to the base

				measure_group.measures.each do |measure| #Add measures for each
					current_headers.concat([measure.name])
				end

				csv << current_headers
				if student == nil then #do all Juries
					puts "** Generating CSV for all students **"
					Jury.find_all_by_measure_group_id(measure_group.id).each do |jury|
						#Getting Repertoire Info
						repertoires = AppliedStudyForm.find(jury.jury_forms.first.applied_study_form_id).repertoires
						repertoire_string = "" #remove previous string
						repertoires.each do |rep|
							repertoire_string = repertoire_string << rep.title << "/"
						end
						repertoire_string = repertoire_string[0...-1] #removing final '/'
						#Getting final assessment information
						final_assessment = jury.jury_forms.first.final_assessment
						#Getting Assessment info
						measures = jury.jury_forms.first.measures
						measures_array = [] #removed previous measure array
						current_headers.drop(6).each do |header|
							item_found = false
							measures.each do |measure|
								if header == measure.name then
									item_found = true
									measures_array.concat([measure.score])
								end #of header == measure.name
							end #of measures.each
							if item_found == false then
								measures_array.concat(["NA"])
							end #and of item_found == false
						end #of current_headers.each
						#filling in the columns
						csv << [jury.student.name, jury.judge.name, jury.created_at, repertoire_string, final_assessment, jury.jury_forms.first.comments].concat(measures_array)
					end #of Jury_find_all_by_measure_group_id.each
				else #do a specific students jury
					puts "** Generating CSV for a single student **"
					Jury.find_all_by_student_id(student.id).each do |jury|
						if jury.measure_group_id == measure_group.id then
							#Getting Repertoire Info
							repertoires = AppliedStudyForm.find(jury.jury_forms.first.applied_study_form_id).repertoires
							repertoire_string = "" #remove previous string
							repertoires.each do |rep|
								repertoire_string = repertoire_string << rep.title << "/"
							end
							repertoire_string = repertoire_string[0...-1] #removing final '/'
							#Getting final assessment information
							final_assessment = jury.jury_forms.first.final_assessment
							#Getting Assessment info
							measures = jury.jury_forms.first.measures
							measures_array = [] #removed previous measure array
							current_headers.drop(6).each do |header|
								item_found = false
								measures.each do |measure|
									if header == measure.name then
										item_found = true
										measures_array.concat([measure.score])
									end #of header == measure.name
								end #of measures.each
								if item_found == false then
									measures_array.concat(["NA"])
								end #and of item_found == false
							end #of current_headers.each
							#filling in the columns
							csv << [jury.student.name, jury.judge.name, jury.created_at, repertoire_string, final_assessment, jury.jury_forms.first.comments].concat(measures_array)
						end #if jury.measure_group_id == measure_group.id
					end #find_all_by_student_id
				end #if stuedent == nil

			end #of measure_groups.each
		end #of generate csv
	end #of as_csv

end #of class Jury
