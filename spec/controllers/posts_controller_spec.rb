require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "POST #create" do

    describe "with valid params" do
      it "creates a new Post" do
        user = create(:user)
        sign_in :user, user
        @post = build(:post, user: user)
        expect {
          post :create, post: @post.attributes
        }.to change(Post, :count).by(1)
      end
    end
  end
  
  describe "DELETE #destroy" do
    before :each do
      user = create(:user)
      sign_in :user, user
      @post = create(:post, user: user)
      poll = create(:poll, post: @post)
      poll_item = create(:poll_item, poll: poll)
      vote = create(:vote, user: user, poll_item: poll_item)
    end
    
    it "destroys the requested post" do
      expect {
        delete :destroy, id: @post
      }.to change(Post, :count).by(-1)
    end
    
    it "destroys the associated poll" do
      expect {
        delete :destroy, id: @post
      }.to change(Poll, :count).by(-1)
    end
    
    it "destroys the associated poll_items" do
      expect {
        delete :destroy, id: @post
      }.to change(PollItem, :count).by(-1)
    end
    
    it "destroys the associated votes" do
      expect {
        delete :destroy, id: @post
      }.to change(Vote, :count).by(-1)
    end
    
    it "redirects to the posts list" do
      delete :destroy, id: @post
      expect(response).to redirect_to(posts_url)
    end
  end

end
