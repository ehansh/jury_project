class Measure < ActiveRecord::Base
  attr_accessible :measure_group_id, :name, :score, :jury_form_id

  belongs_to :measure_group
  belongs_to :jury_form
end
