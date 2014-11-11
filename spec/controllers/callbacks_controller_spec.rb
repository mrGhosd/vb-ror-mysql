require 'rails_helper'

describe CallbacksController, type: :controller do
  let!(:callback) { create :callback }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "shows a callbacks list " do
      get :index
      expect(Callback.all).to eq([callback])
    end

    it "render index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "POST create" do
    it "create a new callback" do
      expect{post :create,
      callback: attributes_for(:callback)}.to change(Callback, :count).by(1)
    end

    it "redirects to admin " do
      post :create, callback: attributes_for(:callback)
      expect(response).to redirect_to root_path
    end
  end
end