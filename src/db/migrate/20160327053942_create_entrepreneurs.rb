class CreateEntrepreneurs < ActiveRecord::Migration
  def up
    create_table :entrepreneurs do |t|
      t.string :name, null: false
      t.string :last_names, null: false
      t.string :email, null: false
      t.string :username, null: false
      t.string :password, null: false
      t.string :web_site_url, null: true
      t.string :facebook, null: true
      t.string :linkedin, null: true
      t.string :twitter, null: true
      t.string :instagram, null: true
      t.string :cellphone, null: true
      t.text   :interests, null: true
      t.datetime :birthdate, null: false
      t.timestamps
    end
  end

  def down
    drop_table :entrepreneurs
  end
end
