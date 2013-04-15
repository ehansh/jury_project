class AddJuryIdToMeasureGroup < ActiveRecord::Migration
  def change
  	add_column :measure_groups,	:jury_id,	:integer
  end
end
