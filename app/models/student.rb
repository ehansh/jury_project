class Student < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, 
  				:appied_study_form_id, :course_num, :graduation_year, 
  				:instructor_id, :instrument, :jury_id, :major, :id,
  				:repertoire_id, :remember_token
  has_secure_password


  has_many :juries
  has_many :applied_study_forms, :dependent => :destroy
  has_many :repertoires

  belongs_to :instructor

  before_save { self.email.downcase! }
  before_save :create_remember_token

  validates :name, 	presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true

  

  private
	
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
