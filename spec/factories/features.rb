FactoryGirl.define do

  factory :feature do
    name  { Faker::Lorem.word }
    value { Faker::Lorem.word }
  end

end
