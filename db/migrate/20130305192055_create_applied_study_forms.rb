class CreateAppliedStudyForms < ActiveRecord::Migration
  def change
    create_table :applied_study_forms do |t|
      t.integer :student_id
      t.integer :repertoire_id
      t.string :studies_and_scales
      t.string :public_performances

      t.timestamps
    end
  end
end
