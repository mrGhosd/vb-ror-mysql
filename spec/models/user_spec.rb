require 'rails_helper'

describe User do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:loan) { create :loan, :confirmed, :unpayed,
                       user_id: user.id, percent_id: percent.id}
  let!(:pasport) { create :passport, user_id: user.id }
  let!(:voen_pasport) { create :voen_pasport, user_id: user.id  }
  let!(:contact) { create :contact_information, user_id: user.id  }
  let!(:kursant) { create :role_kursant, user_id: user.id  }

  describe ".api_request" do
    it "return all user info" do
      expect(User.api_request).to eq(User.includes(:loans,
      :deposits, :passport, :voen_pasport, :contact_information,
      :role_kursant, :role_contract, :role_officer))
    end
  end

  describe "#user_role" do

  end

  describe "#user_role=" do

  end

  describe "#user_sex" do

  end

  describe "#user_sex=" do

  end

  describe "#role" do

  end

  describe "#user_role" do

  end

  describe ".get_percent_id" do

  end

  describe ".get_role_id" do

  end

  describe "#is_admin?" do

  end

  describe "#full_name" do

  end

  describe "#active_percent" do

  end

  describe ".login" do

  end

  describe "#revert_params_from_value_to_id" do

  end

  describe "#full_json_data" do

  end
end