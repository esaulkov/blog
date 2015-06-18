class Poll < ActiveRecord::Base
  belongs_to  :post
  has_many    :poll_items, dependent: :destroy
  has_many    :votes, through: :poll_items

  validates_presence_of :post_id
  validates_presence_of :question
end
