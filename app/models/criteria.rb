class Criteria < ActiveRecord::Base
  attr_accessible :name, :value, :criteria_group

  belongs_to :criteria_group
end
