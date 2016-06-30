class AddEntrepreneurInstitutionRelationship < ActiveRecord::Migration
  def up
    add_column :entrepreneurs, :institution_id, :bigint, { :null => false }
    add_foreign_key :entrepreneurs, :institutions

  end

  def down
    remove_column :entrepreneurs, :institution_id
    remove_foreign_key :entrepreneurs, :institutions
  end
end
