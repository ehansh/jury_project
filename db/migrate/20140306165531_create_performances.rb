class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :name
      t.belongs_to :applied_study_form
      t.timestamps
    end
  end
end
