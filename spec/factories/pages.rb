FactoryGirl.define do

  factory :page do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    slug        { Faker::Internet.slug('foo bar', '-') }
  end

end
