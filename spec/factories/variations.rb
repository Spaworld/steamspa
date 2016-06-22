FactoryGirl.define do
  factory :variation do
    type          { Faker::Lorem.word }
    value         { Faker::Lorem.paragraph }
    description   { Faker::Lorem.paragraph }
    product_id    { rand(0...10) }
  end
end
