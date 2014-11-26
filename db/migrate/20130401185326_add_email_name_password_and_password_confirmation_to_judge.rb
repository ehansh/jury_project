class AddEmailNamePasswordAndPasswordConfirmationToJudge < ActiveRecord::Migration
  def change
  	add_column :judges, :email, 				:string
  	add_column :judges, :first_name, 			:string
  	add_column :judges, :last_name, 			:string
  	add_column :judges, :password, 				:string
  	add_column :judges, :password_confirmation, :string
  end
end
