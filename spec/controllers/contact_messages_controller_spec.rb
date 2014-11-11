require 'rails_helper'

describe ContactMessagesController do
  let!(:message) { create :contact_message }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET admin" do
    it "show all contact messages" do
      get :admin
      expect(ContactMessage.all).to eq([message])
    end

    it "render the admin page template" do
      get :admin
      expect(response).to render_template :admin
    end
  end

  describe "GET new" do
    it "create a new contact message form" do
      get :new
      expect(ContactMessage.new).to be
    end

    it "render the new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST create" do
    it "create a new contact message" do
      expect{post :create,
      contact_message: attributes_for(:contact_message)}.to change(ContactMessage, :count).by(1)
    end

    it "redirects to new contact messages path" do
      post :create, contact_message: attributes_for(:contact_message)
      expect(response).to redirect_to new_contact_message_path
    end
  end

end