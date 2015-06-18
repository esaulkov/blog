FactoryGirl.define do
  factory :poll_item do
    answer "MyString"
    association :poll
  end

end
