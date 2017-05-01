class CreateAdapts < ActiveRecord::Migration[5.0]
  def change
    create_table :adapts do |t|
      t.references :organization, foreign_key: true
      t.references :technology, foreign_key: true

      t.timestamps
    end
  end
end
