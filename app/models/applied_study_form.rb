class AppliedStudyForm < ActiveRecord::Base
  attr_accessible :public_performances, :repertoire_id, :student_id, :studies_and_scales

  belongs_to :student
end
