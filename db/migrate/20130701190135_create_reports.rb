class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :summary
      t.string :link
      t.string :html_link

      t.timestamps
    end
  end
end
