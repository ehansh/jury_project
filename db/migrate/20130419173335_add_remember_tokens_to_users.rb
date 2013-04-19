class AddRememberTokensToUsers < ActiveRecord::Migration
  def change
  	add_column 	:students, :remember_token, :string
	add_index 	:students, :remember_token

	add_column 	:instructors, :remember_token, :string
	add_index 	:instructors, :remember_token

	add_column 	:judges, :remember_token, :string
	add_index 	:judges, :remember_token

  end
end
