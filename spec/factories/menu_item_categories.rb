FactoryGirl.define do
  factory :menu_item_category do
    category_id  { rand(0...999) }
    menu_item_id { rand(0...999) }
  end
end
