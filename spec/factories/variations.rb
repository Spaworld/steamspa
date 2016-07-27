FactoryGirl.define do

  factory :variation do
    name        { Faker::Commerce.product_name }
    product_id  { rand(0...9) }
    trait(:with_features) do
      product     { create(:product, :with_categories) }
    end
  end

end
