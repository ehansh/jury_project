class JudgeJuries < ActiveRecord::Migration
  def up
  	create_table 'judges_juries', :id => false do |t|
    	t.column :judge_id, :integer
    	t.column :juries_id, :integer
    end
  end

  def down
  end
end
