FactoryGirl.define do

  factory :post do
    title { Faker::Book.title }
    body  { Faker::Lorem.paragraph }
    slug  { Faker::Internet.slug('foo bar', '-') }
  end

end
