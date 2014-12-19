require 'rails_helper'

describe User do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:loan) { create :loan, :confirmed, :unpayed,
                       user_id: user.id, percent_id: percent.id}
  let!(:pasport) { create :passport, user_id: user.id }
  let!(:voen_pasport) { create :voen_pasport, user_id: user.id  }
  let! (:nationality) { create :nationality }
  let! (:education) { create :education }
  let! (:relashionship) { create :relashionship}
  let! (:specialization) { create :specialization }
  let! (:sport_mastery) { create :sport_mastery }
  let!(:contact) { create :contact_information, user_id: user.id  }
  let!(:kursant) { create :role_kursant, user_id: user.id  }
  let!(:role) { create :role }
  let!(:role_percent) { create :roles_percent }

  describe ".api_request" do
    it "return all user info" do
      expect(User.api_request).to eq(User.includes(:loans,
      :deposits, :passport, :voen_pasport, :contact_information,
      :role_kursant, :role_contract, :role_officer))
    end
  end

  describe "#user_role" do
    it "return string value of role by id" do
      expect(user.user_role).to eq("Курсант")
    end
  end

  describe "#user_role=" do
    it "set user role" do
      user.user_role = "Курсант"
      user.save
      expect(user.role_id).to eq(1)
    end
  end

  describe "#user_sex" do
    it "return string value of user's sex" do
      expect(user.user_sex).to eq("Мужской")
    end
  end

  describe "#user_sex=(bool)" do
    it "set value to sex parameter" do
      user.user_sex = false
      user.save
      expect(user.sex).to eq(false)
    end
  end

  describe "#role" do
    it "return an user role object" do
      expect(user.role).to eq(kursant)
    end
  end

  describe "#is_admin?" do
    let!(:admin) { create :user, :admin }
    it "return bool value of acces_role" do
      expect(admin.is_admin?).to eq(true)
    end
  end

  describe "#full_name" do
    it "return splitted name of user" do
      expect(user.full_name).to eq("S N SN")
    end
  end

  describe "#active_percent" do
    it "return id of percent for user's role value" do
      expect(user.active_percent).to eq(1)
    end
  end

  describe ".login" do
    it "return user by correct combination of login/password" do
      expect(User.login("3", "3")).to eq(user)
    end
  end

  describe "#full_json_data" do
    it "return json of all objects, connected with user" do
      expect(user.full_json_data).to eq({
      main: user.to_json(methods: [:avatar_url, :user_role, :user_sex]),
      loans: user.loans.to_json(methods: [:date_in_days,
      :date_in_months, :everymonth_pay,
      :closest_payment_date,
      :current_day_in_loan_history,
      :payed_sum, :repayments]),
      deposits: user.deposits.to_json(methods: [:accounts, :days_diff]),
      passport: user.passport.to_json,
      voen_pasport: user.voen_pasport.to_json(methods: [:user_nationality, :user_education,
      :user_relationship, :user_specialization,
      :user_sport_mastery]),
      contact_information: user.contact_information.to_json,
      role: user.role.to_json
      })
    end
  end
end