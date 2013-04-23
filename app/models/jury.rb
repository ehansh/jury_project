class Jury < ActiveRecord::Base
  attr_accessible :jury_form_id, :student_id, :measure_group_id, :judge_id

  has_many 	 :jury_forms
  has_and_belongs_to_many :judge
  belongs_to :student
  belongs_to :measure_group
end
