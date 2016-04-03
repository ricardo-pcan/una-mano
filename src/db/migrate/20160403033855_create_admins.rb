class CreateAdmins < ActiveRecord::Migration
  def up
    create_table :admins do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.timestamps
    end

    add_column :institutions, :admin_id, :bigint

    add_foreign_key :institutions, :admins

  end

  def down
    remove_foreign_key :institutions, :admins
    remove_column :institutions, :admin_id
    drop_table :admins
  end
end
