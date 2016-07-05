FactoryGirl.define do
  factory :photo do
    user_id    { rand(0...999) }
    gallery_id { rand(0...999) }
    image      { File.new("#{Rails.root}/spec/support/images/#{['foo','bar','baz'].sample}.jpg") }
    trait :other_photo do
      image    { File.new("#{Rails.root}/spec/support/images/#{['qux','quux','corge'].sample}.jpg") }
    end
  end
end
