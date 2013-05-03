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
		out << "<p><b>Repertoire:</b>"<< AppliedStudyForm.find(jury_form.applied_study_form_id).repertoires.first.title rescue 'No repertoire' << "</p>"
		out <<"<p><b>Criteria:</b></p>"

		jury_form.measures.each do |measure|
			out << "<p><b>" << measure.name << "</b>: " 
			out << measure.score.to_s << "</p>"
		end
		
		out << "</p>"
		out << "<p>" << "<b>Comments:</b>"
		out << jury_form.comments << "</p>"

		out.html_safe
	end

end
