FactoryGirl.define do
  factory :menu_item_page do
    menu_item_id { rand(0...11) }
    page_id      { rand(0...11) }
  end
end
