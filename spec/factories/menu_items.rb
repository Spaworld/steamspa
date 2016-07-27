FactoryGirl.define do

  factory :menu_item do
    name     { Faker::Lorem.word }
    position { rand(0...9) }
    menu_id  { rand(0...9) }
  end

end
