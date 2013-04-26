class SessionsController < ApplicationController

	def new
	end

	def create
		student = Student.find_by_email(params[:session][:email])
		instructor = Instructor.find_by_email(params[:session][:email])
		judge = Judge.find_by_email(params[:session][:email])

		if student && student.authenticate(params[:session][:password])
			sign_in student
			redirect_to student
		elsif instructor && instructor.authenticate(params[:session][:password])
			sign_in instructor
			redirect_to instructor
		elsif judge && judge.authenticate(params[:session][:password])
			sign_in judge
			redirect_to judge
		else
			flash[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
