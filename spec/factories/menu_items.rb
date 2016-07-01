FactoryGirl.define do
  factory :menu_item do
    name          { Faker::Lorem.word }
    menu_position { rand(0...11) }
  end
end
