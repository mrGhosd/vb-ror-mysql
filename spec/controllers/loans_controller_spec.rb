require 'rails_helper'

describe LoansController do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:roles_percent) { create :roles_percent }
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

  describe "POST create" do
    context "with valid attributes" do
      it "create a kursant with pasport, voen_pasport,
        contact_information and other info" do
        ["User", "Loan", "ContactInformation",
        "Passport", "VoenPasport", "RoleKursant"].each do |model|
          expect{post :create, user: attributes_for(:user,
          role_id: 1, loans_attributes: [attributes_for(:loan,
          percent_id: percent.id)],
          passport_attributes: attributes_for(:passport),
          voen_pasport_attributes: attributes_for(:voen_pasport),
          contact_information_attributes: attributes_for(:contact_information),
          role_kursant_attributes: attributes_for(:role_kursant))}.to change(model.constantize, :count).by(1)
        end
      end

      it "creates a contract officer with info" do
        ["User", "Loan", "ContactInformation",
         "Passport", "VoenPasport", "RoleContract"].each do |model|
          expect{post :create, user: attributes_for(:user,
          role_id: 1, loans_attributes: [attributes_for(:loan,
          percent_id: percent.id)],
          passport_attributes: attributes_for(:passport),
          voen_pasport_attributes: attributes_for(:voen_pasport),
          contact_information_attributes: attributes_for(:contact_information),
          role_contract_attributes: attributes_for(:role_contract))}.to change(model.constantize, :count).by(1)
        end
      end

      it "creates an officer with info" do
        ["User", "Loan", "ContactInformation",
         "Passport", "VoenPasport", "RoleOfficer"].each do |model|
          expect{post :create, user: attributes_for(:user,
          role_id: 1, loans_attributes: [attributes_for(:loan,
          percent_id: percent.id)],
          passport_attributes: attributes_for(:passport),
          voen_pasport_attributes: attributes_for(:voen_pasport),
          contact_information_attributes: attributes_for(:contact_information),
          role_officer_attributes: attributes_for(:role_officer))}.to change(model.constantize, :count).by(1)
        end
      end

      it "return json after successfull registration" do
        post :create, user: attributes_for(:user,
        role_id: 1, loans_attributes: [attributes_for(:loan, percent_id: percent.id)],
        passport_attributes: attributes_for(:passport),
        voen_pasport_attributes: attributes_for(:voen_pasport),
        contact_information_attributes: attributes_for(:contact_information),
        role_officer_attributes: attributes_for(:role_officer))
        expect(response.status).to eq(200)
      end
    end

    context "with invalid attributes" do
      it "return errors json" do
        post :create, user: attributes_for(:user, surname: nil,
        role_id: 1, loans_attributes: [attributes_for(:loan,
        percent_id: percent.id)],
        passport_attributes: attributes_for(:passport),
        voen_pasport_attributes: attributes_for(:voen_pasport),
        contact_information_attributes: attributes_for(:contact_information),
        role_officer_attributes: attributes_for(:role_officer))
        expect(assigns(:user).errors).to_not be_empty
      end
    end
  end

  describe "GET loan_request" do

    context "for current user" do
      before do
        controller.current_user = user
        allow(user).to receive(:is_admin?).and_return(true)
      end

      context "with payed loans" do
        before do
          loan.update(status: true)
        end

        it "create loan" do
          expect{get :loan_request,
          amount: "10000", time: "3"}.to change(Loan, :count).by(1)
        end

        it "render json with flash" do
          get :loan_request, amount: "10000", time: "3"
          expect(response.body).to eq({answer: flash[:notice]}.to_json)
        end
      end

      context "with unpayed loans" do
        it "retun flash with the notice" do
          get :loan_request, amount: "10000", time: "3"
          expect(flash[:notice]).to be
        end
      end
    end

    context "for new user" do
      before do
        get :loan_request,
        amount: "10000", time: "3"
      end

      it "create a form for a new User(Loan and other)" do
        expect(User.new).to be
      end

      it "returns a loan request partial" do
        expect(response).to render_template "loans/loan_request.html.slim"
      end
    end
  end
end