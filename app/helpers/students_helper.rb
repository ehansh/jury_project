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

	def applied_study_forms_module_buttons(student)
		student.applied_study_forms.first.nil?
			out = ""
			out << '<tr id="first"><td>'
			out << student.name
			out << " has no applied study forms</td>"
		else
			student.applied_study_forms.each do |applied_study_form|
				out = %Q[
					<!-- Button to trigger modal -->
				    <td><a href="#myModal" role="button" class="btn" data-toggle="modal">Launch demo modal</a></td>
				     
				    <!-- Modal -->
				    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				    <div class="modal-header">
				    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				    <h3 id="myModalLabel">Modal header</h3>
				    </div>
				    <div class="modal-body">
				    <p>One fine body…</p>
				    </div>
				    <div class="modal-footer">
				    <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
				    </div>
				    </div>
				]
			out.html_safe
		end
	end
end
