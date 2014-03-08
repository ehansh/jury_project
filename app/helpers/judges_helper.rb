module JudgesHelper
	def create_progress_div(jury)
		out = ""

		if jury.jury_forms.first.nil?
			out << %Q[<div class="accordion-heading">]
		elsif jury.jury_forms.first.final_assessment == "Unsatisfactory Progress at this level"
			out << %Q[<div class="accordion-heading label-important">]
		elsif jury.jury_forms.first.final_assessment == "Continue study at this level"
			out << %Q[<div class="accordion-heading label-warning">]
		elsif jury.jury_forms.first.final_assessment == "Advance to study at next level"
			out << %Q[<div class="accordion-heading label-info">]
		elsif jury.jury_forms.first.final_assessment == "All jury levels for degree completed"
			out << %Q[<div class="accordion-heading label-success">]
		else
			out << %Q[<div class="accordion-heading">]
		end
		out.html_safe
	end
end
