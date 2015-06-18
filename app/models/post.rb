class Post < ActiveRecord::Base
  belongs_to  :user
  has_one     :poll, dependent: :destroy
  
  validates_presence_of :title
  validates_presence_of :body
  validates :user, presence: true
end
