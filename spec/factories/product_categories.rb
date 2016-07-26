FactoryGirl.define do

  factory :product_category do
    product_id  { rand(0...9) }
    category_id { rand(0...9) }
  end

end
