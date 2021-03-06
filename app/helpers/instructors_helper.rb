module InstructorsHelper

	def create_student_table(instructor)
		out =  %Q[
				<table class="table table-striped table-bordered" id="student_table">
				<tr>
	        		<th>Students</th>
	      		</tr>
	  	]
		if instructor.students.first.nil? 
			out << "<tr><td> This instructor has no students </td></tr>"
		else
			instructor.students.each do |student|
				link_info = ActionController::Base.helpers.link_to student.name, student_path(student)
				out << "<tr><td>" << link_info << "</td></tr>"
			end
		end
		out << "</table>"
		out.html_safe
	end
end
