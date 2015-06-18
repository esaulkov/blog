require 'faker'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| 'evgeny#{n}@mail.ru' }
    password    Faker::Internet.password
  end

end
