class StringToText < ActiveRecord::Migration
  def up
  	change_column :jury_forms, :comments, :text, :limit => nil
  end

  def down
  end
end
