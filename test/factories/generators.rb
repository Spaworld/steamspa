FactoryGirl.define do
  factory :generator do
    name        { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
  end
end
