FactoryGirl.define do

  factory :menu_item_product do
    menu_item_id { rand(0...9) }
    product_id   { rand(0...9) }
  end

end
