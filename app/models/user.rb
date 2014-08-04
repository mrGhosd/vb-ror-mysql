class User < ActiveRecord::Base
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

  accepts_nested_attributes_for :role_kursant
  accepts_nested_attributes_for :role_officer
  accepts_nested_attributes_for :role_contract

  has_attached_file :avatar,
                    :use_timestamp => false,
                    :styles => {normal: "300x200>", small: "200x120>", iphone: "120x120"}
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  def avatar_url
    "http://vk.com/#{id}.jpg"
  end

  def self.get_percent_id(percent_val)
    Percent.find_by_value(percent_val).id
  end

  def self.get_role_id(role)
    Role.find_by_value(role).id
  end

  def self.login(login, password)
    # session[:current_user] = "1"
    # cookies[:currenr_user] = {value: true, expires: 1.week.from_now}
    current_user = User.find_by login: login, password: password
  end

  def logout(session)

  end

end