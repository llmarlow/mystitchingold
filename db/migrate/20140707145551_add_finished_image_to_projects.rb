class AddFinishedImageToProjects < ActiveRecord::Migration
  def self.up
    add_attachment :projects, :finished_image
  end

  def self.down
    remove_attachment :projects, :finished_image
  end
end
