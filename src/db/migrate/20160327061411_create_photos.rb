class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.string name, null: true
      t. string path, null:false
      t.timestamps
    end
    add_foreign_key :photos, :projects
  end

  def down
    remove_foreign_key :photos, :projects
    drop_table :photos
end
