class CreateMeasureGroups < ActiveRecord::Migration
  def change
    create_table :measure_groups do |t|
      t.string :name
      t.integer :measure_id

      t.timestamps
    end
  end
end
