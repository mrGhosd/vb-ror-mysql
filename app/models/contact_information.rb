class ContactInformation < ActiveRecord::Base
  belongs_to :user
  has_one :nationality
  has_one :education
  has_one :sport_mastery
  has_one :relashionship
  has_one :specialization
  # validates :email, uniqueness: true
end