FactoryGirl.define do
  factory :post_category do
    category_id { rand(0...11) }
    post_id     { rand(0...11) }
  end
end
