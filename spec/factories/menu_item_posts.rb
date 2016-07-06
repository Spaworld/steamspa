FactoryGirl.define do
  factory :menu_item_post do
    post_id       { rand(0...11) }
    menu_item_id  { rand(0..11)  }
  end
end
