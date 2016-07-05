FactoryGirl.define do
  factory :blurb do
    name      { Faker::Lorem.word }
    content   { Faker::Lorem.paragraph }
    page_id   { rand(0...11) }
    after(:create) do |blurb|
      blurb.galleries << create(:gallery)
    end
    photos    { build_list(:photo, 1, :other_photo) }
  end
end
