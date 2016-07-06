FactoryGirl.define do
  factory :variation do
    name          { Faker::Lorem.word }
    description   { Faker::Lorem.paragraph }
    product_id    { rand(0...10) }
  end
end
