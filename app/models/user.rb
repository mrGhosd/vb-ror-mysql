class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :loans
  has_many :deposits
  accepts_nested_attributes_for :deposits
  accepts_nested_attributes_for :loans

  def avatar_url
    "http://vk.com/#{id}.jpg"
  end

  def self.get_percent_id(percent_val)
    Percent.find_by_value(percent_val).id
  end

end