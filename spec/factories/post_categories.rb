FactoryGirl.define do

  factory :post_category do
    post_id     { rand(0...9) }
    category_id { rand(0...9) }
  end

end
