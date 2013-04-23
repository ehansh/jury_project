module JuriesHelper

	def applied_study_information(student)
		out = "<div> <h3> Applied study information </h3>"
		if student.applied_study_forms.first.nil?
			out << "This student has no applied study forms"
		else
			applied_study_form = student.applied_study_forms.last
			repertoire = Repertoire.find(applied_study_form.repertoire_id)

			out << "<b>Studies and Scales: </b>"
			out << applied_study_form.studies_and_scales

			out << "</br>"

			out << "<b>Public Performances: </b>"
			out << applied_study_form.public_performances

			out << "</br>"

			out << "<b>Repotoire: </b>"
			out << "#{repertoire.title} by #{repertoire.composer}. Duration:#{repertoire.duration}"

			out << "</div>"
		end
		out.html_safe
	end
end
