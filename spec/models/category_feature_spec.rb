require 'rails_helper'

RSpec.describe CategoryFeature, type: :model do

  it 'has a valid factory' do
    expect(build(:category_feature)).to be_valid
  end

  context 'associations' do

    it { should belong_to(:feature) }
    it { should belong_to(:category) }

  end

  it 'should return associated features' do
    feature = create(:feature)
    category_feature = create(:category_feature, feature_id: feature.id)
    expect(category_feature.features).to include feature
  end

end
