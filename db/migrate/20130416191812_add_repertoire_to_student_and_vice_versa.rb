class AddRepertoireToStudentAndViceVersa < ActiveRecord::Migration
  def change
  	add_column :repertoires, :student_id, 	 :integer
  	add_column :students,	 :repertoire_id, :integer
  end
end
