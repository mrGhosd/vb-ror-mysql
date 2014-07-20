class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :loans
  has_many :deposits
  has_one :passport
  has_one :voen_pasport
  has_one :contact_information
  accepts_nested_attributes_for :deposits
  accepts_nested_attributes_for :loans
  accepts_nested_attributes_for :passport
  accepts_nested_attributes_for :voen_pasport
  accepts_nested_attributes_for :contact_information

  def avatar_url
    "http://vk.com/#{id}.jpg"
  end

  def self.get_percent_id(percent_val)
    Percent.find_by_value(percent_val).id
  end

end