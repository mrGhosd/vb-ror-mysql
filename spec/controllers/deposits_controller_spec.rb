require 'spec_helper'

describe DepositsController do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :deposit }
  let!(:deposit) { create :deposit, :unconfirmed,
                          user_id: user.id,
                          percent_id: percent.id }

  describe "GET new" do
    it "creates a form for a new user and deposit" do
      get :new
      expect(User.new).to be
      expect(Deposit.new).to be
    end

    it "render the new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST create" do
    context "with valid attributes" do
      it "create a user and deposit" do
        ["User", "Deposit"].each do |model|
          expect{post :create, user: attributes_for(:user,
          deposits_attributes: [attributes_for(:deposit,
          percent_id: percent.id)])}.to change(model.constantize, :count).by(1)
        end
      end

      it "return status 200" do
        post :create, user: attributes_for(:user,
        deposits_attributes: [attributes_for(:deposit,
        percent_id: percent.id)])
        expect(response.status).to eq(200)
      end
    end

    context "with invalid attributes" do
      it "doesn't create a user and a deposit" do
        ["User", "Deposit"].each do |model|
          expect{post :create, user: attributes_for(:user,
          surname: "", deposits_attributes: [attributes_for(:deposit,
          percent_id: percent.id)])}.to_not change(model.constantize, :count).by(1)
        end
      end

      it "return forbiden status" do
        post :create, user: attributes_for(:user,
        surname: "", deposits_attributes: [attributes_for(:deposit,
        percent_id: percent.id)])
        expect(response.status).to eq(403)
      end
    end
  end

  describe "GET deposit_request" do
    before do
      controller.current_user = user
      allow(user).to receive(:is_admin?).and_return(true)
    end

    context "current user" do
      it "creates a deposit" do
        expect{get :deposit_request, user_id: user.id,
        amount: 50000,
        percent: 15}.to change(Deposit, :count).by(1)
      end

      it "return json resposne" do
        get :deposit_request, user_id: user.id,
            amount: 50000,
            percent: 15
        expect(response.body).to eq({response: 'Спасибо за ваш вклад!'}.to_json)
      end
    end

    context "new user" do
      it "creat new form for user and deposit" do
        get :deposit_request, user_id: user.id,
            amount: 50000,
            percent: 15
        expect(User.new).to be
        expect(Deposit.new).to be
      end

      it "render template with new deposit form" do
        get :deposit_request, user_id: user.id,
            amount: 50000,
            percent: 15
        expect(response).to render_template(partial: '_deposit_request',
                            locals: {current_amount: 1000,
                                    percent: 15})
      end
    end
  end

  describe "GET deposit_contribution_list" do
    let!(:contirbution_account) { create :contribution_account,
    :brought, deposit_id: deposit.id }

    it "define a deposit" do
      get :deposits_contribution_list, id: deposit.id
      expect(assigns(:payment)).to eq(deposit.contribution_account)
    end

    it "render deposit request partial" do
      get :deposits_contribution_list, id: deposit.id
      expect(response).to render_template :deposits_contribution_list
    end
  end
end