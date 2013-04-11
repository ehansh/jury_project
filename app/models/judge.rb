class Judge < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :jury_id

  has_and_belongs_to_many :juries
end
