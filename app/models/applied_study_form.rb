class AppliedStudyForm < ActiveRecord::Base
  attr_accessible :repertoire_id, :student_id, :studies_and_scales

  belongs_to :student
  has_many :repertoires
  has_many :performances
 end
