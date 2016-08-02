FactoryGirl.define do
  factory :role do
    name          { Faker::Lorem.word }
    resource_id   { rand(0...9) }
  end
end
