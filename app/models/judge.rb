class Judge < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :jury_id

  has_many :juries
end
