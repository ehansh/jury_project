module JuryFormsHelper

	def forms_information(jury_forms, judge)
		out = ""
		jury_forms.each do |jury_form|
			if jury_form.judge == judge
				out << form_information(jury_form)
			end
		end

		out.html_safe
	end

	def form_information(jury_form)
		out = ""
		out << "<p><b>Student:</b>"<< jury_form.jury.student.name << "</p>"
		out << %Q[<table class="table table-striped table-bordered" id="repertoire_table">
				<tr>
	        		<th>Repotoire</th>
	        		<th></th>]
	        		AppliedStudyForm.find(jury_form.applied_study_form_id).repertoires.each do |repertoire|
	        			out << repertoire_table_item(repertoire)
	        		end
			out << "</tr></table>"
		out <<"<p><b>Criteria:</b>" << jury_form.jury.measure_group.name << '</p>'

		jury_form.measures.each do |measure|
			out << "<p><b>" << measure.name << "</b>: " 
			out << measure.score.to_s << "</p>"
		end
		
		out << "</p>"
		out << "<p>" << "<b>Comments:</b>"
		out << jury_form.comments << "</p>"
		out << "<p>" << "<b>Final Assessment:</B>" << jury_form.final_assessment

		out.html_safe
	end

end
