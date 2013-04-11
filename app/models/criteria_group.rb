class CriteriaGroup < ActiveRecord::Base
  attr_accessible :criteria_id, :name, :criteria

  has_many :criteria
end
