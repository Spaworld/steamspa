FactoryGirl.define do

  factory :blurb do
    name    { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
  end

end
