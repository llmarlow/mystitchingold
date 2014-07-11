class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer  "project_id"
      t.integer  "hours"
      t.date     "update_date"
      t.timestamps
    end
  end
end
