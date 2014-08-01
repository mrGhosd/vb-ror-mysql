class User < ActiveRecord::Base
  # belongs_to :role
  has_many :loans
  has_many :deposits
  has_one :passport
  has_one :voen_pasport
  has_one :contact_information
  has_one :role_kursant
  has_one :role_contract
  has_one :role_officer
  accepts_nested_attributes_for :deposits
  accepts_nested_attributes_for :loans
  accepts_nested_attributes_for :passport
  accepts_nested_attributes_for :voen_pasport
  accepts_nested_attributes_for :contact_information
  #
  accepts_nested_attributes_for :role_kursant
  accepts_nested_attributes_for :role_officer
  accepts_nested_attributes_for :role_contract

  def avatar_url
    "http://vk.com/#{id}.jpg"
  end

  def self.get_percent_id(percent_val)
    Percent.find_by_value(percent_val).id
  end

  def self.get_role_id(role)
    Role.find_by_value(role).id
  end

end