FactoryGirl.define do
  factory :gallery do
    product_id   { rand(0...11) }
    variation_id { rand(0...11) }
    photos       { build_list(:photo, 1) }
  end
end
