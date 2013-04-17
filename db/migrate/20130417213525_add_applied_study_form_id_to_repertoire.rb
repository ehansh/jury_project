class AddAppliedStudyFormIdToRepertoire < ActiveRecord::Migration
  def change
  	add_column :repertoires, :applied_study_form_id, :integer
  end
end
