class CreateMeetupGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :meetup_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
