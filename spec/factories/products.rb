FactoryGirl.define do
  factory :product do
    name        { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    features    ['a','b','c']
    # trait :generator do
    # end
  end
end
