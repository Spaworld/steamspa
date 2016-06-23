FactoryGirl.define do
  factory :photo do
    gallery_id { rand(0...11) }
  end
end
