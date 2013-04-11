class AddStudentIdAndCriteriaGroupIdToJuries < ActiveRecord::Migration
  def change
  	add_column :juries, :student_id, :integer
  	add_column :juries, :criteria_group_id, :integer
  end
end
