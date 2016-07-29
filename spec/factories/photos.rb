FactoryGirl.define do

  factory :photo do
    image { File.new("#{Rails.root}/spec/support/images/foo.jpg") }
  end

end
