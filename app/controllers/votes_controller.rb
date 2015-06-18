class VotesController < ApplicationController
  before_action :set_user_id

  def vote
    poll_item = PollItem.select("poll_id").where(id: params[:vote][:poll_item_id]).take
    poll_items = PollItem.select("id").where(poll_id: poll_item.poll_id).all
    votes_this_poll = Vote.where(["user_id = ? and poll_item_id IN (?)", @user_id, poll_items]).count
    if votes_this_poll == 0
      @vote = Vote.new(vote_params)
      if @vote.save
        redirect_to posts_path, notice: 'Your choice has been saved.'
      else
        redirect_to posts_path, alert: "You can't vote."
      end
    else
      @vote = Vote.find_by("user_id = ? AND poll_item_id IN (?)", @user_id, poll_items)
      if @vote.update(vote_params)
        redirect_to posts_path, notice: 'Your choice has been changed.'
      else
        redirect_to posts_path, alert: "You can't vote."
      end
    end
  end
  
  def destroy
  
  end
private
    # Never trust parameters from the scary internet, only allow the white list through.
    def set_user_id
      @user_id =  params[:vote][:user_id]
    end
    
    def vote_params
      params.require(:vote).permit(:user_id, :poll_item_id)
    end
end
