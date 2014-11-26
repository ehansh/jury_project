class AddEmailNamePasswordAndPasswordConfirmationToInstructor < ActiveRecord::Migration
  def change
   	add_column :instructors, :email, 					:string
  	add_column :instructors, :first_name, 				:string
  	add_column :instructors, :last_name, 				:string
  	add_column :instructors, :password, 				:string
  	add_column :instructors, :password_confirmation, 	:string
  end
end
