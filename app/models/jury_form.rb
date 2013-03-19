class JuryForm < ActiveRecord::Base
  attr_accessible :applied_study_form_id, :comments, :criteria_id, :final_assessment, :judge_id
end
