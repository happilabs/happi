class AddColumnsToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :phone, :string
    add_column :users, :website_url, :string
    add_column :users, :subcription_level, :string

  end
end
