class AddAvatarToPersonas < ActiveRecord::Migration

  def self.up
    add_attachment :personas, :avatar
  end

  def self.down
    remove_attachment :personas, :avatar
  end
end
