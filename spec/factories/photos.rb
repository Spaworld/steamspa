FactoryGirl.define do
  factory :photo do
    gallery_id { rand(0...11) }
    image { File.new("#{Rails.root}/spec/support/images/foo.jpg") }
  end
end