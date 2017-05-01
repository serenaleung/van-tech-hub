class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.text :snippet
      t.string :displayLink
      t.string :image
      t.string :date

      t.timestamps
    end
  end
end
