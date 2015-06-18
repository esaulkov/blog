FactoryGirl.define do
  factory :vote do
    association :user
    association :poll_item
  end

end
