FactoryGirl.define do
  factory :menu_option do
    menu_id       { rand(0...11) }
    menu_item_id  { rand(0...11) }
  end
end
