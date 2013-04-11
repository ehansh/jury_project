class CreateCriteriaGroups < ActiveRecord::Migration
  def change
    create_table :criteria_groups do |t|
      t.integer :criteria_id
      t.string	:name

      t.timestamps
    end
  end
end
