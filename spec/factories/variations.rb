FactoryGirl.define do

  factory :variation do
    name        { Faker::Commerce.product_name }
    product_id  { rand(0...9) }
  end

end
