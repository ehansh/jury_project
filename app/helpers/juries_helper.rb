module JuriesHelper

	def applied_study_information(student)
		out = "<div> <h3> Applied study information </h3>"

		out << "<b>Studies and Scales: </b>"
		out << student.applied_study_forms.first.studies_and_scales

		out << "</br>"

		out << "<b>Public Performances: </b>"
		out << student.applied_study_forms.first.public_performances

		out << "</br>"

		out << "More student information will go here, this is just to give a general feel"


		out << "</div>"
		out.html_safe
	end
end
