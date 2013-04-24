class ChangeCriteriaTomeasureOnJuryForms < ActiveRecord::Migration
  def up
  	add_column 	:jury_forms, :measure_id, :integer
  	drop_table 	:criteria
  end

  def down
  end
end
