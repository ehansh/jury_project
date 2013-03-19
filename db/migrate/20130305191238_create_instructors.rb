class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.integer :student_id

      t.timestamps
    end
  end
end
