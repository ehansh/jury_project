class JuryForm < ActiveRecord::Base
  attr_accessible :applied_study_form_id, :comments, :measure_id, :final_assessment, :judge_id, :measures

  belongs_to :judge
  has_many :measures
end
