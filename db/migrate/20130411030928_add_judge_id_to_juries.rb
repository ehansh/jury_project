class AddJudgeIdToJuries < ActiveRecord::Migration
  def change
    add_column :juries, :judge_id, :integer
  end
end
