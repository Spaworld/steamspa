FactoryGirl.define do

  factory :product_photo do
    product_id  { rand(0...9) }
    photo_id    { rand(0...9) }
  end

end
