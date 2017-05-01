class AddAvatarToOrganizations < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :organizations, :avatar
  end

  def self.down
    remove_attachment :organizations, :avatar
  end
end
