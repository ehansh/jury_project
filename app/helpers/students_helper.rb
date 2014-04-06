module StudentsHelper
	def repertoire_table(student)
		out = %Q[
				<table class="table table-striped table-bordered" id="repertoire_table">
				<tr>
	        		<th>Repotoire</th>
	        		<th></th>
	      		</tr>
	  	]
	  	if student.repertoires.first.nil? 
			out << '<tr id="first"><td> This student has no repertoire </td></tr>'
		else
			student.repertoires.each do |repertoire|
				link_info = link_to 'Remove', repertoire, method: :delete, data: { confirm: 'Are you sure?' }, remote: true
				out << "<tr id='remove_repertoire_#{repertoire.id}'><td>" << "#{repertoire.title} by #{repertoire.composer}. Duration:#{repertoire.duration}"  << "</td>"
				out << "<td>" << link_info << "</td></tr>"
			end
		end
		out << "</table>"
		out.html_safe	
	end
end
