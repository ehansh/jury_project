class Student < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :appied_study_form_id, :course_num, :graduation_year, :instructor_id, :instrument, :jury_id, :major

  has_many :jury_forms
  has_many :applied_study_forms
end
