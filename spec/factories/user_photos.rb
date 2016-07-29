FactoryGirl.define do

  factory :user_photo do
    photo_id { rand(0...9) }
    user_id  { rand(0...9) }
  end

end
