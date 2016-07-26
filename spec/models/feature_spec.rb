require 'rails_helper'

RSpec.describe Feature, type: :model do

  it 'has a valid factory' do
    expect(build(:feature)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:value) }

  end

  context 'associations' do

    it { should have_many(:categories).through(:category_features) }

  end

end
