module StudentsHelper
	def repertoire_table(student)
		out = %Q[
				<table class="table table-striped table-bordered">
				<tr>
	        		<th>Repotoire</th>
	      		</tr>
	  	]
	  	if student.repertoires.first.nil? 
			out << "<tr><td> This student has no repertoire </td></tr>"
		else
			student.repertoires.each do |repertoire|
				out << "<tr><td>" << repertoire.title << "</td></tr>"
			end
		end
		out.html_safe	
	end
end
