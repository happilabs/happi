class AddDescToCategoryTable < ActiveRecord::Migration
  def change
    add_column :categories, :desc, :text
  end
end
