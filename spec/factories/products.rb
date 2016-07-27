FactoryGirl.define do

  factory :product do
    name { Faker::Commerce.product_name }
    trait(:with_categories) do
      after(:create) do |product|
        product.categories <<  create_list(:category, 1, :with_features)
      end
    end
  end

end
