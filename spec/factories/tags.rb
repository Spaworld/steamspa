FactoryGirl.define do

  factory :tag do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
  end

end
