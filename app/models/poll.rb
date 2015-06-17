class Poll < ActiveRecord::Base
  belongs_to  :post
  has_many    :poll_items
  has_many    :votes, through: :poll_items
end
