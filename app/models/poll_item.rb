class PollItem < ActiveRecord::Base
  belongs_to :poll
  has_many :votes, dependent: :destroy
  attr_readonly :votes_count
end
