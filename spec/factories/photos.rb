FactoryGirl.define do
  factory :photo do
    user_id    { rand(0...11) }
    gallery_id { rand(0...11) }
    image      { File.new("#{Rails.root}/spec/support/imagesi/*.jpg") }
  end
end
