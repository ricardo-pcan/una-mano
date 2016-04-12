class Institution < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { in: 4..100 }
  validates :description, length: { maximum: 500 }
  validates :admin_id, presence: true
  validates :institution_alias, presence: true, length: { maximum: 20 }
  belongs_to :admin

end
