FactoryGirl.define do
  factory :product do
    name        { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    features    ['foo','bar','baz']
    variations  { build_list(:variation, 1) }
  end
end
