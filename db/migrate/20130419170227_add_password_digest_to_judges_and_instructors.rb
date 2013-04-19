class AddPasswordDigestToJudgesAndInstructors < ActiveRecord::Migration
  def change
  	add_column :judges, 		:password_digest, :string
  	add_column :instructors, 	:password_digest, :string
  end
end
