FactoryGirl.define do

  factory :category do
    name        { Faker::Commerce.department }
    description { Faker::Lorem.paragraph }
    parent_id   { rand(0..9) }
    trait(:with_features) do
      after(:create) do |category|
        category.features << create_list(:feature, 1)
      end
    end
  end

end
