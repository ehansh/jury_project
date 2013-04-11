class CreateJuries < ActiveRecord::Migration
  def change
    create_table :juries do |t|
      t.integer :jury_form_id

      t.timestamps
    end
  end
end
