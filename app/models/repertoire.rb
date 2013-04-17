class Repertoire < ActiveRecord::Base
  attr_accessible :composer, :duration, :memorized, :on_jury, :title, :student_id, :applied_study_form_id

  belongs_to :student
  belongs_to :applied_study_form
end
