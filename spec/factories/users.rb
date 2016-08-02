FactoryGirl.define do

  factory :user do

    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username   { Faker::Internet.user_name }
    phone      { Faker::PhoneNumber.cell_phone }
    email      { Faker::Internet.email }
    trait(:admin) do
      after(:create) do |user|
        user.add_role(:admin)
      end
    end
    trait(:with_photos) do
      after(:create) do |user|
        user.photos << create_list(:photo, 1)
      end
    end

  end

end
