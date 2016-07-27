FactoryGirl.define do

  factory :menu_item_page do
    menu_item_id { rand(0..9) }
    page_id      { rand(0..9) }
  end

end
