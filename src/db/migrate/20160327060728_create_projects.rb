class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :name, null:false
      t.string :video_path, null: true
      t.text :description, null: false
      t.timestamps
    end
    add_foreign_key :projects, :entrepreneurs
  end

  def down
    remove_foreign_key :projects, :entrepreneurs
    drop_table :projects
  end
end
