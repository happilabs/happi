class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :org_name
      t.string :dept

      t.timestamps
    end
  end
end
