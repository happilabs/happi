class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :product_name
      t.text :product_desc
      t.string :product_num
      t.string :photo
      t.string :manufacturer_name
      t.string :distributor_name
      t.string :price
      t.boolean :recommended
      t.string :url

      t.timestamps
    end
  end
end
