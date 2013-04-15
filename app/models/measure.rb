class Measure < ActiveRecord::Base
  attr_accessible :measure_group_id, :name, :score

  belongs_to :measure_group
end
