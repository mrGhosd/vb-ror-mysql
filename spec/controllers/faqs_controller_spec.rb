require 'spec_helper'

describe FaqsController do
  let!(:faq_list) { FactoryGirl.create_list(:faq, 12) }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "show last 10 faq" do
      get :index
      expect(Faq.last_ten).to eq(faq_list.first(10))
    end

    it "render index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET admin" do
    it "show all faqs" do
      get :admin
      expect(Faq.all).to eq(faq_list)
    end

    it "render the admin template" do
      get :admin
      expect(response).to render_template :admin
    end
  end

  describe "GET new" do
    it "show form for a new faq" do
      get :new
      expect(Faq.new).to be
    end

    it 'render the new template' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET edit" do
    it 'locate the requested faq' do
      get :edit, id: faq_list.first.id, faq: attributes_for(:partner)
      expect(assigns(:faq)).to eq(faq_list.first)
    end

    it "render the edit template" do
      get :edit, id: faq_list.first.id, faq: attributes_for(:partner)
      expect(response).to render_template :edit
    end
  end

  describe "POST create" do
    it "create a new faq" do
      expect{post :create,
      faq:attributes_for(:faq)}.to change(Faq, :count).by(1)
    end

    it 'redirects to admin faqs path' do
      expect{post :create,
      faq:attributes_for(:faq)}.to change(Faq, :count).by(1)
      expect(response).to redirect_to admin_faqs_path
    end
  end

  describe "PUT update" do
    it "change the faq attribute" do
      put :update, id: faq_list.first.id,
          faq: attributes_for(:faq, answer: "ANSWER")
      faq_list.first.reload
      expect(faq_list.first.answer).to eq("ANSWER")
    end

    it 'redirects to admin faqs path' do
      put :update, id: faq_list.first.id,
          faq: attributes_for(:faq)
      expect(response).to redirect_to admin_faqs_path
    end
  end

  describe "DELETE destroy" do
    it 'delete a faq' do
      expect{delete :destroy,
            id: faq_list.first.id}.to change(Faq, :count).by(-1)
    end

    it 'return status 200' do
      delete :destroy, id: faq_list.first.id
      expect(response.status).to eq(200)
    end
  end
end