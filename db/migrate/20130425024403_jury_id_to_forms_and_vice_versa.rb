class JuryIdToFormsAndViceVersa < ActiveRecord::Migration
  def up
  	add_column :jury_forms, :jury_id, 		:integer
  end

  def down
  end
end
