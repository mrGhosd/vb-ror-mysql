require 'rails_helper'

describe StocksController do
  # let(:admin) { create(:user) }
  before :each do
    user = double :user
    controller.current_user = user                      #miracle 1
    allow(user).to receive(:is_admin?).and_return(true) #miracle 2
    @stock_1 = FactoryGirl.create(:stock, stock_title: "1-1")
    @stock_2 = FactoryGirl.create(:stock, stock_title: "1-2")
    @stock_3 = FactoryGirl.create(:stock, stock_title: "1-3")
  end

  describe 'GET #admin' do
    it 'show array of all stocks' do
      get :index
      expect(Stock.all).to eq([@stock_1, @stock_2, @stock_3])
    end
    it 'render the index view ' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    it "show form for new stock" do
      get :new
      expect(Stock.new).to be
    end

    it "render new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "creates a new contact" do
        expect{
          post :create, stock:  FactoryGirl.attributes_for(:stock)
        }.to change(Stock, :count).by(1)
      end

      it "redirects to new stock path" do
        post :create, stock: FactoryGirl.attributes_for(:stock)
        response.should redirect_to stocks_path
      end
    end
  end

  describe "GET #edit" do
    context "with valid attributes" do
      it "located the requested stock" do
        get :edit, id: @stock_1, stock: FactoryGirl.attributes_for(:stock)
        assigns(:stock).should eq(@stock_1)
      end

      it "renders the edit template" do
        get :edit, id: @stock_1, stock: FactoryGirl.attributes_for(:stock)
        expect(response).to render_template :edit
      end
    end
  end

  describe "PUT #update" do
    context "with valid attributes" do

      it "changes stock attributes" do
        put :update, id: @stock_1, stock: FactoryGirl.attributes_for(:stock, stock_title: "olololo", stock_text: "1")
        @stock_1.reload
        expect(@stock_1.stock_title).to eq("olololo")
        expect(@stock_1.stock_text).to eq("1")
      end

      it "it redirects to stocks path" do
        put :update, id: @stock_1, stock: FactoryGirl.attributes_for(:stock)
        expect(response).to redirect_to stocks_path
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes the stock" do
      expect{delete :destroy, id: @stock_1}.to change(Stock, :count).by(-1)
    end

    it "expect to render success json" do
      delete :destroy, id: @stock_1
    end
  end
end