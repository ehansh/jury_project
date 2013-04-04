class Instructor < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :student_id

  has_many :students
end
