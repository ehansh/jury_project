class Repertoire < ActiveRecord::Base
  attr_accessible :composer, :duration, :memorized, :on_jury, :title, :student_id, :applied_study_form_id

  belongs_to :student
  belongs_to :applied_study_form

  validates :composer, 	presence: true
  validates :duration, 	presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :title, 	presence: true
end
