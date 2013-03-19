class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :instructor_id
      t.integer :jury_id
      t.integer :appied_study_form_id
      t.string :major
      t.integer :graduation_year
      t.string :course_num
      t.string :instrument

      t.timestamps
    end
  end
end
