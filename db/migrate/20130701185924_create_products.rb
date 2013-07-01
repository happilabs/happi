class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.string :product_number
      t.text :summary
      t.string :photo

      t.timestamps
    end
  end
end
