class CreateJuryForms < ActiveRecord::Migration
  def change
    create_table :jury_forms do |t|
      t.integer :applied_study_form_id
      t.integer :judge_id
      t.integer :criteria_id
      t.string :comments
      t.string :final_assessment

      t.timestamps
    end
  end
end
