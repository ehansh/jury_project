class AddJuryFormIdToMeasure < ActiveRecord::Migration
  def change
  	add_column :measures, :jury_form_id, :integer
  end
end
