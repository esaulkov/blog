class Poll < ActiveRecord::Base
  belongs_to  :post
  has_many    :poll_items, dependent: :destroy
  has_many    :votes, through: :poll_items
end
