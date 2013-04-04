class ApplicationController < ActionController::Base
  protect_from_forgery

  include InstructorsHelper
  helper_method :create_student_table
end
