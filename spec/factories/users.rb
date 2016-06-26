FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username   { Faker::Internet.user_name }
    phone      { Faker::PhoneNumber }
    email      { Faker::Internet.email }
    trait :admin do
      roles    { [admin: true] }
    end
    trait :author do
      roles    { [author: true] }
    end
  end
end
