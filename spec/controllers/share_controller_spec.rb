require 'spec_helper'

describe SharesController do
  let(:share_1)  { create :share }
  let(:share_2) { create :share }
  let(:share_3) { create :share, :disabled }
  before(:each) do
    user = double :user
    controller.current_user = user
    allow(user).to receive(:is_admin?).and_return(true)
  end

  describe 'GET #new' do
    it "shows form for new share" do
      get :new
      expect(Share.new).to be
    end

    it "render the new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #admin' do
    it "show all shares" do
      get :admin
      expect(Share.all).to eq([share_1, share_2, share_3])
    end

    it 'render the admin template' do
      get :admin
      expect(response).to render_template :admin
    end
  end

  describe 'GET #index' do
    it 'render only available shares' do
      get :index
      expect(Share.available).to eq([share_1, share_2])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new share" do
        expect{ post :create, share:
            attributes_for(:share) }.to change(Share, :count).by(1)
      end

      it "renders the list of all shares" do
        post :create, share: attributes_for(:share)
        expect(response).to redirect_to admin_shares_path
      end
    end
  end

  describe "GET #edit" do
    context "with valid attributes" do
      it "located the requested share" do
        get :edit, id: share_1.id, share: attributes_for(:share)
        expect(assigns(:share)).to eq(share_1)
      end

      it "render the edit template" do
        get :edit, id: share_1.id, share: attributes_for(:share)
        expect(response).to render_template :edit
      end
    end
  end

  describe "PUT #update" do
    context "with valid attributes" do
      it "located the requested share" do
        put :update, id:share_1.id, share:attributes_for(:share)
        expect(assigns(:share)).to eq(share_1)
      end

      it 'change share parameters' do
        put :update, id:share_1.id, share:
            attributes_for(:share, share_title: "1", share_text: "2")
        share_1.reload
        expect(share_1.share_title).to eq("1")
        expect(share_1.share_text).to eq("2")
      end

      it "redirects to admin shares path" do
        put :update, id: share_1.id, share: attributes_for(:share)
        expect(response).to redirect_to admin_shares_path
      end

    end
  end

  describe "DELETE #destroy" do
    before :each do
      @share_del = create :share
    end
    it "deletes the share" do
      expect{delete :destroy, id: @share_del.id }.to change(Share, :count).by(-1)
    end
    it "return status 200" do
      delete :destroy, id: @share_del.id
      expect(response.status).to eq(200)
    end
  end

  describe "POST share_switch" do
    it 'define a share' do
      post :share_switch, id: share_1.id
      expect(assigns(:share)).to eq(share_1)
    end

    it 'switch share param enabled' do
      post :share_switch, id: share_1.id
      share_1.reload
      expect(share_1.enabled).to eq(false)
    end

    it 'return the success json' do
      post :share_switch, id: share_1.id
      expect(response.body).to eq({success: false}.to_json)
    end
  end
end