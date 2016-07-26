FactoryGirl.define do

  factory :category do
    name        { Faker::Commerce.department }
    description { Faker::Lorem.paragraph }
    parent_id   { rand(0..9) }
  end

end
