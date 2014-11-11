require 'rails_helper'

describe RolesController do
  let!(:role_1) { create :role }
  let!(:role_2) { create :role }
  let!(:role_3) { create :role }

  before do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe "GET index" do
    it "show all roles" do
      get :index
      expect(Role.all).to eq([role_1, role_2, role_3])
    end

    it "render index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET new" do
    it "create form for a new role" do
      get :new
      expect(Role.new).to be
    end

    it "render new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET edit" do
    it "define a requested role" do
      get :edit, id: role_1.id
      expect(assigns(:role)).to eq(role_1)
    end

    it "render edit template" do
      get :edit, id: role_1.id
      expect(response).to render_template :edit
    end
  end

  describe "POST create" do
    it "creates a new role" do
      expect{post :create, role: attributes_for(:role)}.to change(Role, :count).by(1)
    end

    it "redirect to roles percents path" do
      post :create, role: attributes_for(:role)
      expect(response).to redirect_to new_roles_percent_path(current_role_id: Role.last.id,
                          current_role_value: Role.last.value)
    end
  end

  describe "PUT update" do
    it "update role parameters" do
      put :update, id: role_1.id, role: attributes_for(:role, value: "ololosh")
      role_1.reload
      expect(role_1.value).to eq("ololosh")
    end

    it "redirect to role_path" do
      put :update, id: role_1.id, role: attributes_for(:role)
      expect(response).to redirect_to roles_path
    end
  end

  describe "DELETE destroy" do
    it "delete the role" do
      expect{ delete :destroy, id: role_1.id }.to change(Role, :count).by(-1)
    end

    it "return 200 status" do
      delete :destroy, id: role_1.id
      expect(response.status).to eq(200)
    end
  end
end