class CreateRepertoires < ActiveRecord::Migration
  def change
    create_table :repertoires do |t|
      t.string :title
      t.string :composer
      t.string :duration
      t.boolean :memorized
      t.boolean :on_jury

      t.timestamps
    end
  end
end
