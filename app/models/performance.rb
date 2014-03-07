class Performance < ActiveRecord::Base
  attr_accessible :name, :applied_study_form_id, :id

  belongs_to :applied_study_form
end
