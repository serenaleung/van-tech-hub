class CreateSearchTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :search_terms do |t|
      t.string :search_term

      t.timestamps
    end
  end
end
