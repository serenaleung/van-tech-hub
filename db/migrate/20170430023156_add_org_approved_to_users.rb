class AddOrgApprovedToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :org_approved, :boolean, default: false
  end
end
