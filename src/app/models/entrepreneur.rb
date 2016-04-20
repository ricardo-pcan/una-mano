class Entrepreneur < ActiveRecord::Base
  validates :name, presence: true
  validates :last_names, presence: true
  validates :name, length: {maximum: 100}
  validates :last_names, length: { maximum: 100 }
  validates :birthdate, presence: true
  validates :birthdate, :timeliness => { :type => :date }
end
