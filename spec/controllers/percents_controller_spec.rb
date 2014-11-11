require 'rails_helper'

describe PercentsController do
  let!(:percent_1) { create :percent, :loan }
  let!(:percent_2) { create :percent, :deposit }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "show all percents" do
     get :index
     expect(Percent.all).to eq([percent_1, percent_2])
    end

    it "render index page" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET new" do
    it 'creates a form for a new percent' do
      get :new
      expect(Percent.new).to be
    end

    it 'renders the new form' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET edit" do
    it "defin a editable percent" do
      get :edit, id: percent_1.id
      expect(assigns(:percent)).to eq(percent_1)
    end

    it "render the edit template" do
      get :edit, id: percent_1.id
      expect(response).to render_template :edit
    end
  end

  describe "POST create" do
    it "creates a new percent" do
      expect{post :create,
      percent: attributes_for(:percent, :loan)}.to change(Percent,
                                        :count).by(1)
    end

    it "redirect redirect to percents path" do
      post :create, percent: attributes_for(:percent, :deposit)
      expect(response).to redirect_to percents_path
    end
  end

  describe "PUT update" do
    it "update percents attributes" do
      put :update, id: percent_1.id,
          percent: attributes_for(:percent, :loan, min_summ: 3)
      percent_1.reload
      expect(percent_1.min_summ).to eq(3)
    end

    it "redirect to percents page" do
      put :update, id: percent_1.id, percent: attributes_for(:percent, :loan)
      expect(response).to redirect_to percents_path
    end
  end

  describe "DELETE destroy" do
    it "delete a percent" do
      expect{delete :destroy, id:percent_1.id}.to change(Percent,
                                                  :count).by(-1)
    end

    it 'return 200 status' do
      delete :destroy, id: percent_1.id
      expect(response.status).to eq(200)
    end
  end
end