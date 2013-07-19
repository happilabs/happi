class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.boolean :admin_approved
      t.boolean :make_anonymous
      t.boolean :user_recommended
      t.integer :rating
      t.text :desc

      t.timestamps
    end
  end
end
