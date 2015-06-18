class Vote < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :poll_item, counter_cache: true
  
  validates_presence_of :user_id
  validates_presence_of :poll_item_id
end
