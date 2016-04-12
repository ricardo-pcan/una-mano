class ReplaceAliasByInstitutionAliasInInstitution < ActiveRecord::Migration
  def up
    rename_column :institutions, :alias, :institution_alias
  end

  def down
    rename_column :institutions, :institution_alias, :alias
  end
end
