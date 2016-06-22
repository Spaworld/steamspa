FactoryGirl.define do
  factory :gallery do
    product_id { rand(0...11) }
  end
end
