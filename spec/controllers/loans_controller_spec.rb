require 'rails_helper'

describe LoansController do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:loan) { create :loan, :unconfirmed,
  :unpayed, user_id: user.id, percent_id: percent.id }

  describe "GET new" do
    it "creates a registration form" do
      get :new
      expect(User.new).to be
      expect(Loan.new).to be
      expect(ContactInformation.new).to be
      expect(Passport.new).to be
      expect(VoenPasport.new).to be
      expect(RoleKursant.new).to be
      expect(RoleContract.new).to be
      expect(RoleOfficer.new).to be
    end
  end

  describe "POST create"
  describe "GET loan_request"
end