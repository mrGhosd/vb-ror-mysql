class User < ActiveRecord::Base
  has_many :loans, dependent: :destroy
  has_many :deposits, dependent: :destroy
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

  validates :surname, presence: { message: "Фамилия не может быть пустой" }
  validates :name, presence: { message: "Имя не может быть пустым" }
  validates :secondname, presence: { message: "Отчество не может быть пустым" }
  validates :contact_phone, presence: { message: "Телефон не может быть пустым" }
  validates :contact_phone, numericality: {message: "Номер телефона должен быть числом"}

  mount_uploader :avatar, UserUploader
  scope :api_request, -> { includes(:loans, :deposits, :passport, :voen_pasport, :contact_information, :role_kursant, :role_contract, :role_officer) }
  after_create :set_login_password

  def avatar_url
    avatar.url(:small)
  end

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


  def role
    case Role.find(role_id).try(:id)
      when 1
        self.role_kursant
      when 2
        self.role_contract
      when 3
        self.role_officer
      else
        nil
    end
  end

  def is_admin?
    self.access_role == "admin"
  end

  def full_name
    [surname, name, secondname].join(' ')
  end

  def active_percent
    RolesPercent.find_by(role_id: self.role_id).percent_id
  end

  def self.login(login, password)
    User.find_by login: login, password: password
  end

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def revert_params_from_id_to_value
    self.role_id = Role.find(self.role_id).value
    self
  end

  def full_json_data
    {
        main: self.to_json(methods: [:avatar_url, :user_role, :user_sex]),
        loans: self.loans.to_json(methods: [:date_in_days,
                                            :date_in_months, :everymonth_pay,
                                            :closest_payment_date,
                                            :current_day_in_loan_history,
                                            :payed_sum, :repayments]),
        deposits: self.deposits.to_json(methods: [:accounts, :days_diff]),
        passport: self.passport.to_json,
        voen_pasport: self.voen_pasport.to_json(methods: [:user_nationality, :user_education,
                                                          :user_relationship, :user_specialization,
                                                          :user_sport_mastery]),
        contact_information: self.contact_information.to_json,
        role: self.role.to_json
    }
  end

  private
  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end

  def set_login_password
    unless self.login || self.password
      login = "#{self.id}#{self.role_id}#{self.created_at.strftime("%d%m%Y%H%m")}"
      password = User.new_remember_token.last(7)
      self.update(login: login, password: password)
    end
  end

end