module JuriesHelper

	def applied_study_information(student)
		applied_study_form = student.applied_study_forms.last
		repertoire = Repertoire.find(applied_study_form.repertoire_id)
		out = "<div> <h3> Applied study information </h3>"

		out << "<b>Studies and Scales: </b>"
		out << student.applied_study_forms.last.studies_and_scales

		out << "</br>"

		out << "<b>Public Performances: </b>"
		out << student.applied_study_forms.last.public_performances

		out << "</br>"

		out << "<b>Repotoire: </b>"
		out << "#{repertoire.title} by #{repertoire.composer}. Duration:#{repertoire.duration}"

		out << "</div>"
		out.html_safe
	end
end
