class FixJudgeJuriesIdName < ActiveRecord::Migration
  def up
  	rename_column :judges_juries, :juries_id, :jury_id
  end

  def down
  end
end
