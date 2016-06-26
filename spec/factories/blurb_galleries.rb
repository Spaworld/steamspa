FactoryGirl.define do
  factory :blurb_gallery do
    blurb_id    { rand(0...11) }
    gallery_id  { rand(0...11) }
  end
end
