class CreateUserVoices < ActiveRecord::Migration
  def change
    create_table :user_voices do |t|
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
