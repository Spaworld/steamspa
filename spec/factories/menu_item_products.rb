FactoryGirl.define do
  factory :menu_item_product do
    menu_item_id { rand(0...11) }
    product_id   { rand(0...11) }
  end
end
