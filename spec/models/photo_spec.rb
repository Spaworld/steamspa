require 'rails_helper'

RSpec.describe Photo, type: :model do

  it 'has a valid factory' do
    expect(build(:photo)).to be_valid
  end

  context 'validations' do

    it { should have_attached_file(:image) }
    it { should validate_attachment_content_type(:image).
         allowing('image/png', 'image/gif', 'image/jpg').
         rejecting('text/plain', 'text/xml') }
  end

  context 'associations' do

    it { should have_many(:products).through(:product_photos) }
    it { should have_many(:variations).through(:variation_photos) }
    it { should have_and_belong_to_many(:tags) }
    it { should have_and_belong_to_many(:categories) }
    it { should have_and_belong_to_many(:blurbs) }
    it { should have_many(:users).through(:user_photos) }

  end

end
