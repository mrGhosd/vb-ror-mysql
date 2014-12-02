require 'rails_helper'

describe UsersController do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :loan }
  let!(:roles_percent){ create :roles_percent }
  let!(:loan) { create :loan, :unconfirmed,
      :unpayed, user_id: user.id, percent_id: percent.id }

  before do
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET #index" do
    it "return a list of all users" do
      get :index
      expect(User.all).to eq([user])
    end

    it "renders an index partial" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "return the new User entity" do
      get :new
      expect(User.new).to be
    end

    it "render new user template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    it "define user by id" do
      get :edit, user_id: user.id
      expect(assigns(:user)).to eq(user)
    end

    it "render edit template" do
      get :edit, user_id: user.id
      expect(response).to render_template :edit
    end
  end

  describe "GET #show" do
    it "define user that should be shown" do
      get :show, id: user.id
      expect(assigns(:user)).to eq(user)
    end

    it "renders the show template" do
      get :show, id: user.id
      expect(response).to render_template :show
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "create a user" do
        expect{post :create,
        user: attributes_for(:user)}.to change(User, :count).by(1)
      end

      it "redirect to users_path" do
        post :create, user: attributes_for(:user)
        expect(response).to redirect_to users_path
      end
    end

    context "with invalid attributes" do
      it "doesn't create new user" do
        expect{post :create,
        user: attributes_for(:user, surname: "")}.to change(User, :count).by(0)
      end

      it "render new template" do
        post :create, user: attributes_for(:user, surname: "")
        expect(response).to render_template :new
      end
    end
  end

  describe "PUT #update" do

    it "change user attributes" do
      put :update, user_id: user.id, user: attributes_for(:user,id: 1, surname: "1")
      user.reload
      expect(user.surname).to eq("1")
    end

    it "redirect to root path" do
      put :update, user_id: user.id, user: attributes_for(:user, id: 1)
      expect(response).to redirect_to root_path
    end
  end

  describe "DELETE #destroy" do
    it "delete a user" do
      expect{delete :destroy, id: user.id }.to change(User, :count).by(-1)
    end

    it "return status 200" do
      delete :destroy, id: user.id
      expect(response.status).to eq(200)
    end
  end
end