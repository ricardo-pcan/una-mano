class Institution < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 4, maximum: 100 }
  validates :description, length: { maximum: 500 }
end
