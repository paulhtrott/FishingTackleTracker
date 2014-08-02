class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_one, :string
    add_column :users, :address_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :zip_code, :string
 
    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :address_one
    add_index :users, :address_two
    add_index :users, :city
    add_index :users, :state
    add_index :users, :country
    add_index :users, :zip_code
  end
end
