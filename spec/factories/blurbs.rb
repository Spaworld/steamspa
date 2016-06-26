FactoryGirl.define do
  factory :blurb do
    name    { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
    page_id { rand(0...11) }
  end
end
