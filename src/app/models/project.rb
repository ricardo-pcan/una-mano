class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence:true, length: { minimum: 50 }
end
