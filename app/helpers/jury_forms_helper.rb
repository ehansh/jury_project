module JuryFormsHelper

	def form_information(jury_forms, judge)
		out = ""
		jury_forms.each do |jury_form|
			if jury_form.judge == judge
				out << "<p><b>Student:</b>"<< jury_form.jury.student.name << "</p>"

				out <<"<p><b>Criteria:</b></p>"

				jury_form.measures.each do |measure|
					out << "<p><b>" << measure.name << "</b>: " 
					out << measure.score.to_s << "</p>"
				end 
				out << "</p>"
				out << "<p>" << "<b>Comments:</b>"
				out << jury_form.comments << "</p>"
			end
		end

		out.html_safe
	end

end
