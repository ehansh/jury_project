class AddEmailNamePasswordAndPasswordConfirmationToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :email, 					:string
  	add_column :students, :first_name, 				:string
  	add_column :students, :last_name, 				:string
  	add_column :students, :password, 				:string
  	add_column :students, :password_confirmation, 	:string
  end
end
