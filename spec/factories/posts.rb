FactoryGirl.define do
  factory :post do
    title     { Faker::Name.title }
    body      { Faker::Lorem.paragraph }
    author_id { rand(0...11) }
    tags      { Faker::Lorem.words }
    slug      { Faker::Internet.slug('foo bar', '-') }
  end
end
