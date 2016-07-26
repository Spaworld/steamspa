require 'rails_helper'

RSpec.describe CategoryFeature, type: :model do

  it 'has a valid factory' do
    expect(build(:category_feature)).to be_valid
  end

  context 'associations' do

    it { should belong_to(:feature) }
    it { should belong_to(:category) }

  end

end
