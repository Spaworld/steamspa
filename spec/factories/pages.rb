FactoryGirl.define do
  factory :page do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    slug        { Faker::Internet.slug('foo bar', '-') }
    blurbs      { build_list(:blurb, 1) }
  end
end
