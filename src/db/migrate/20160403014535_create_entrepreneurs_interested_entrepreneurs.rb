class CreateEntrepreneursInterestedEntrepreneurs < ActiveRecord::Migration
  def up
    create_table :entrepreneurs_interested_entrepreneurs do |t|
      t.text :comment, null: true
      t.timestamp :interested_date, null: true
      t.bigint :entrepreneur_applicant_id, null: false
      t.bigint :entrepreneur_applied_id, null: false
      t.bigint :project_id, null: false
      t.timestamp :interested_date, null: true
      t.timestamps
    end
  end

  def down
    drop_table :entrepreneurs_interested_entrepreneurs
  end
end
