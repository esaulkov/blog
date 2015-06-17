require 'rails_helper'

RSpec.describe PollItemController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "returns http success" do
      put :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested poll_item" do
      poll_item = PollItem.create! valid_attributes
      expect {
        delete :destroy, {:id => poll_item.to_param}, valid_session
      }.to change(PollItem, :count).by(-1)
    end
  end

end
