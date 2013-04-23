class Instructor < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :student_id
  has_secure_password

  before_save { self.email.downcase! }
  before_save :create_remember_token

  validates :name, 	presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, on: :create

  has_many :students

  private
	
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
