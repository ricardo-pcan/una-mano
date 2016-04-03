class CreateInstitutions < ActiveRecord::Migration
  def up
    create_table :institutions do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.string :alias, null: true
      t.string :image_profile_path, null: true
      t.string :ubication, null: true
      t.timestamps
    end
  end

  def down
    drop_table :institutions
  end
end
