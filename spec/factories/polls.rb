FactoryGirl.define do
  factory :poll do
    question "MyString"
    association :post
  end

end
