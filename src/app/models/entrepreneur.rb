class Entrepreneur < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 100 }
  validates :last_names, presence: true, length: { maximum: 100 }
  validates :birthdate, presence: true
  validates_date :birthdate, :before => lambda { 10.years.ago }
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :profile_image, presence: false, allow_blank: true, image: true
  validates :web_site_url, url: true, presence: false, allow_blank: true
  validates :twitter, presence: false, allow_blank: true, twitter: true
  validates :profile_id, presence: true

  belongs_to :institution
  belongs_to :profile


end
