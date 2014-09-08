class User < ActiveRecord::Base
  has_many :loans
  has_many :deposits
  has_one :passport, dependent: :destroy
  has_one :voen_pasport, dependent: :destroy
  has_one :contact_information, dependent: :destroy
  has_one :role_kursant, dependent: :destroy
  has_one :role_contract, dependent: :destroy
  has_one :role_officer, dependent: :destroy
  accepts_nested_attributes_for :deposits
  accepts_nested_attributes_for :loans
  accepts_nested_attributes_for :passport
  accepts_nested_attributes_for :voen_pasport
  accepts_nested_attributes_for :contact_information

  accepts_nested_attributes_for :role_kursant
  accepts_nested_attributes_for :role_officer
  accepts_nested_attributes_for :role_contract

  validates :surname, presence: true
  validates :name, presence: true
  validates :secondname, presence: true

  has_attached_file :avatar,
                    :use_timestamp => false,
                    :styles => {normal: "300x200>", small: "200x120>", iphone: "120x120"}
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def user_role
    Role.find(role_id).value unless role_id.blank?
  end

  def user_role=(role)
    self.role_id = Role.find_by_value(role).id unless Role.find_by_value(role).blank?
  end

  def user_sex
    if sex
      "Мужской"
    else
      "Женский"
    end
  end

  def user_sex=(bool)
    if bool
      param = true
    else
      param = false
    end
    self.sex = param
  end

  def self.get_percent_id(percent_val)
    Percent.find_by_value(percent_val).id
  end

  def self.get_role_id(role)
    Role.find_by_value(role).id
  end

  def is_admin?
    [132].include?(id)
  end

  def full_name
    [surname, name, secondname].join(' ')
  end

  def self.login(login, password)
    # session[:current_user] = "1"
    # cookies[:currenr_user] = {value: true, expires: 1.week.from_now}
    current_user = User.find_by login: login, password: password
  end

  def logout(session)

  end


  def revert_params_from_id_to_value
    self.role_id = Role.find(self.role_id).value
    self
  end


  def revert_params_from_value_to_id
    binding.pry
    self.role_id = Role.find_by_value(role_id).id
    self
  end

end