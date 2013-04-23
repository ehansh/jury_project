module StudentsHelper
	def repertoire_table(student)
		out = %Q[
				<table class="table table-striped table-bordered">
				<tr>
	        		<th>Repotoire</th>
	        		<th></th>
	      		</tr>
	  	]
	  	if student.repertoires.first.nil? 
			out << "<tr><td> This student has no repertoire </td></tr>"
		else
			student.repertoires.each do |repertoire|
				link_info = link_to 'Destroy', repertoire, method: :delete, data: { confirm: 'Are you sure?' }
				out << "<tr><td>" << "#{repertoire.title} by #{repertoire.composer}. Duration:#{repertoire.duration}"  << "</td>"
				out << "<td>" << link_info << "</td></tr>"
			end
		end
		out << "</table>"
		out.html_safe	
	end
end
