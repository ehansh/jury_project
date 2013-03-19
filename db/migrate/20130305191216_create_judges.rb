class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.integer :jury_id

      t.timestamps
    end
  end
end
