module AppliedStudyFormsHelper
	def repertoire_table_item(repertoire)
		out = '<tr id="repertoire_'
		out << repertoire.id << '"><td> '
		out << repertoire.title << ' by ' << repertoire.composer << '. Duration: ' 
		out << repertoire.duration << '</td><td></td></tr>'
		out.html_safe
	end
end
