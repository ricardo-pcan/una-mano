class AddProfileImageToEntrepreneur < ActiveRecord::Migration
  def up
    add_column :entrepreneurs, :profile_image, :string, { :required => false }
  end

  def down
    remove_column :entreprenurs, :profile_image
  end
end
