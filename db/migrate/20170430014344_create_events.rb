class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :urlname
      t.datetime :start_time
      t.text :desc

      t.timestamps
    end
  end
end
