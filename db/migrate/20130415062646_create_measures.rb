class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :name
      t.integer :score
      t.integer :measure_group_id

      t.timestamps
    end
  end
end
