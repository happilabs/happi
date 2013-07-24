class AddColumnsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :fair_price, :string
    add_column :categories, :price_quantity, :string
    add_column :categories, :first_quality, :string
    add_column :categories, :second_quality, :string
    add_column :categories, :third_quality, :string
  end
end
