class AddEmailNamePasswordAndPasswordConfirmationToInstructor < ActiveRecord::Migration
  def change
   	add_column :instructors, :email, 					:string
  	add_column :instructors, :name, 					:string
  	add_column :instructors, :password, 				:string
  	add_column :instructors, :password_confirmation, 	:string
  end
end
