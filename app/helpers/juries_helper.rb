module JuriesHelper

	def applied_study_information(student)
		out = "<div> <h3> Applied study information </h3>"
		if student.applied_study_forms.first.nil?
			out << "This student has no applied study forms"
		else
			applied_study_form = student.applied_study_forms.last

			out << "<h4>Studies and Scales: </h4>"
			out << applied_study_form.studies_and_scales

			out << "</br>"
			out << "</br>"

			out << %Q[<table class="table table-striped table-bordered" id="performance_table">
				<tr>
	        		<th>Performances</th>
	        	</tr>]
	        	applied_study_form.performances.each do |performance|
	        		out << "<tr><td>" 
	        		out << performance.name 
	        		out << "</tr></td>"
	        	end
			out << "</table>"

			out << %Q[<table class="table table-striped table-bordered" id="repertoire_table">
				<tr>
	        		<th>Repotoire</th>
	        	</tr>]
	        		applied_study_form.repertoires.each do |repertoire|
	        			out << repertoire_table_item(repertoire)
	        		end
			out << "</table></div>"
		end
		out.html_safe
	end
end
