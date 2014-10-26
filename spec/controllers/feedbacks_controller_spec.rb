require 'spec_helper'

describe FeedbacksController do
   let!(:feedbacks_list) { FactoryGirl.create_list(:feedback, 5) }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "show list of last 4 feedbacks" do
      get :index
      expect(Feedback.last_four).to eq(feedbacks_list.first(4))
    end

    it "render the index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET admin" do
    it "show list of all feedbacks" do
      get :admin
      expect(Feedback.all).to eq(feedbacks_list)
    end

    it "render the admin template" do
      get :admin
      expect(response).to render_template :admin
    end
  end

  describe "POST create" do
    it "creates a new feedback" do
        expect{
          post :create, feedback: attributes_for(:feedback)
        }.to change(Feedback, :count).by(1)
    end

    it "redirects to feedbacks path" do
      post :create, feedback: attributes_for(:feedback)
      expect(response).to redirect_to feedbacks_path
    end
  end

  describe "DELETE destroy" do
    it "deletes the stock" do
      expect{ delete :destroy, id: feedbacks_list.first }.to change(Feedback, :count).by(-1)
    end

    it "return 200 status" do
      delete :destroy, id: feedbacks_list.first
      expect(response.status).to eq(200)
    end
  end
end