FactoryGirl.define do

  factory :menu_item_category do
    menu_item_id { rand(0...9) }
    category_id  { rand(0...9) }
  end

end
