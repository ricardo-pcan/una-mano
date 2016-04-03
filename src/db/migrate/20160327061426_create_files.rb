class CreateFiles < ActiveRecord::Migration
  def up
    create_table :files do |t|
      t.string name, null: false
      t.string path, null: false
      t.timestamps
    end

    add_foreign_key :files, :projects
  end

  def down
    remove_foreign_key :files, :projects
    drop_table :files
  end
end
