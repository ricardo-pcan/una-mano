class Profile < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false, allow_nil: false,  capitalized: true
  validates :description, allow_blank: true, length: { maximum: 200 }
end
