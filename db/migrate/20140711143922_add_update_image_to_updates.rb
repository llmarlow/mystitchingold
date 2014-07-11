class AddUpdateImageToUpdates < ActiveRecord::Migration
  def self.up
    add_attachment :updates, :update_image
  end

  def self.down
    remove_attachment :updates, :update_image
  end
end
