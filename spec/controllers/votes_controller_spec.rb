require 'rails_helper'

RSpec.describe VotesController, type: :controller do

  describe "POST #vote" do
    context "when logged in" do
      before :each do
        user = create(:user)
        sign_in :user, user
        post = create(:post, user: user)
        poll = create(:poll, post: post)
        @poll_item = create(:poll_item, poll: poll)
        @vote = build(:vote, user: user, poll_item: @poll_item)
      end
    
      it "changes the votes number" do
        expect {
          post :vote, vote: @vote.attributes
        }.to change(Vote, :count).by(1)
      end
      
      it "changes the counter in poll_items" do
        post :vote, vote: @vote.attributes
        expect(@poll_item.reload.votes_count).to eq(1)
      end
      
      it "redirects to posts list" do
        post :vote, vote: @vote.attributes
        expect(response).to redirect_to(posts_url)
      end
    end
      
    context "when logged out" do
      it "doesn't change the votes number" do
        expect {
          post :vote, vote: attributes_for(:vote, user: nil, poll_item: @poll_item)
        }.to_not change(Vote, :count)
      end
      
      it "redirects to login page" do
        vote = build(:vote, user: nil, poll_item: @poll_item)
        post :vote, vote: vote
        expect(response).to redirect_to(new_user_session_url)
      end
    end
  end
end
