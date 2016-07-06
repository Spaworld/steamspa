FactoryGirl.define do
  factory :attribute do
    name          { Faker::Lorem.word }
    value         { Faker::Lorem.word }
    variation_id  { rand(0...11) }
  end
end
