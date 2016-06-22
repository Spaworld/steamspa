FactoryGirl.define do
  factory :product do
    name        { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    features    { Faker::Lorem.words(4, true) }
    variations  { build_list(:variation, 1) }
    gallery     { build(:gallery) }
  end
end
