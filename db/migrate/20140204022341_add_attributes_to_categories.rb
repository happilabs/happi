class AddAttributesToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :youtube, :string
    add_column :categories, :paying_photo, :string
    add_column :categories, :hl_logo, :string
  end
end
