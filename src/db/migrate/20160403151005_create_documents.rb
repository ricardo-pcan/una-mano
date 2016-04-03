class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name, null: false
      t.string :path, null: false
      t.bigint :project_id, null: false
      t.timestamps null: false
    end

    remove_foreign_key :files, :projects
    drop_table :files
    add_foreign_key :documents, :projects
  end

  def down
    remove_foreign_key :documents, :projects
    drop_table :documents
  end

end
