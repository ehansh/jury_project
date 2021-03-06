class Judge < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :jury_id, :remember_token
  has_secure_password

  has_and_belongs_to_many :juries

  before_save { self.email.downcase! }
  before_save :create_remember_token

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true 

  def name
    first_name + " " + last_name
  end

  private
	
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end


end
