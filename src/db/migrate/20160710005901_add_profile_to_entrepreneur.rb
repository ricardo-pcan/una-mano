class AddProfileToEntrepreneur < ActiveRecord::Migration
  def up
    add_column :entrepreneurs, :profile_id, :bigint, { :null => false }
    add_foreign_key :entrepreneurs, :profiles
  end

  def down
    remove_foreign_key :entrepreneurs, :profiles
    remove_column :entrepreneurs, :profile_id
  end
end
