class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :employees
      t.string :manager
      t.boolean :is_published, default: false
      t.string :city
      t.string :street
      t.string :province
      t.string :postal_code
      t.text :overview
      t.string :website
      t.string :twitter

      t.timestamps
    end
  end
end
