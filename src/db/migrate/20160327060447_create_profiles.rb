class CreateProfiles < ActiveRecord::Migration
  def up
    create_table :profiles do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.timestamps
    end
  end

  def down
    drop_table :profiles
  end
end
