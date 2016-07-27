require 'rails_helper'

RSpec.describe Variation, type: :model do

  it 'has a valid factory' do
    expect(build(:variation)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:product_id) }

  end

  context 'associations' do

    it { should belong_to(:product) }
    it { should have_many(:photos).through(:variation_photos) }

    it 'should destroy associated variation_photo on self#destroy' do
      variation = create(:variation)
      variation.photos << create(:photo)
      expect { variation.destroy }.to change{ VariationPhoto.count }.by(-1)
    end

  end

  it 'should return associated features' do
    variation = build(:variation, :with_features)
    expect(variation.features).to_not be_empty
  end

end
