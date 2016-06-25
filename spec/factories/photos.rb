FactoryGirl.define do
  factory :photo do
    user_id    { rand(0...11) }
    gallery_id { rand(0...11) }
    image      { File.new("#{Rails.root}/spec/support/images/foo.jpg") }
  end
end
