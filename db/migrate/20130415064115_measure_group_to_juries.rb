class MeasureGroupToJuries < ActiveRecord::Migration
  def up
  	add_column :juries, :measure_group_id,	:integer
  end

  def down
  end
end
