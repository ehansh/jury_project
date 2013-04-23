class MeasureGroup < ActiveRecord::Base
  attr_accessible :measure_id, :name, :jury_id

  has_many :measures
  has_one :jury
end
