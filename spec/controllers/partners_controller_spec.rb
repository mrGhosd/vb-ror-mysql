require 'rails_helper'

describe PartnersController do
  let!(:partner_1) { create :partner, enabled: false }
  let!(:partner_2) { create :partner, partner_description: "OLOLOLO" }
  let!(:partner_3) { create :partner, partner_title: "TITLE" }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "show all enabled partners" do
      get :index
      expect(Partner.enabled).to eq([partner_2, partner_3])
    end

    it "render the index page" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET admin" do
    it 'show all partners' do
      get :admin
      expect(Partner.all).to eq([partner_1, partner_2, partner_3])
    end

    it 'render the admin page' do
      get :admin
      expect(response).to render_template :admin
    end
  end

  describe "GET new" do
    it 'show form for new partner' do
      get :new
      expect(Partner.new).to be
    end

    it 'render new page' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET edit" do
    it 'located the requested partner' do
      get :edit, id:partner_2.id, partner: attributes_for(:partner)
      expect(assigns(:partner)).to eq(partner_2)
    end

    it 'render the edit template' do
      get :edit, id:partner_2.id, partner: attributes_for(:partner)
      expect(response).to render_template :edit
    end
  end

  describe "GET show" do
    it "located the requested partner" do
      get :show, id: partner_1.id
      expect(assigns(:partner)).to eq(partner_1)
    end

    it 'render the show page' do
      get :show, id: partner_1.id
      expect(response).to render_template :show
    end
  end

  describe "POST create" do
    it "creates a new partner" do
      expect{post :create,
      partner: attributes_for(:partner)}.to change(Partner,
      :count).by(1)
    end

    it "redirect to admin partners page" do
      post :create, partner: attributes_for(:partner)
      expect(response).to redirect_to admin_partners_path
    end
  end

  describe "POST partner_switch" do
    it 'switch partner enabled parameter' do
      post :partner_switch, id: partner_1.id
      partner_1.reload
      expect(partner_1.enabled).to eq(true)
    end
  end

  describe "PUT update" do
    it "change partner attributes" do
      put :update, id: partner_3.id, partner: attributes_for(:partner,
      partner_title: "OLOLOLO", partner_description: "DESC")
      partner_3.reload
      expect(partner_3.partner_title).to eq("OLOLOLO")
      expect(partner_3.partner_description).to eq("DESC")
    end

    it "redirects to partners page" do
      put :update, id: partner_3.id, partner: attributes_for(:partner)
      expect(response).to redirect_to admin_partners_path
    end
  end

  describe "DELETE destroy" do
    it 'delete a partner' do
      expect{ delete :destroy, id: partner_1.id }.to change(Partner,
                              :count).by(-1)
    end

    it 'render status 200' do
      delete :destroy, id: partner_1.id
      expect(response.status).to eq(200)
    end
  end
end