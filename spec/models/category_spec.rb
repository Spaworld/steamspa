require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid factory' do
    expect(create(:category)).to be_valid
  end
  context 'associations' do
    it 'has many products' do
      expect(Category.reflect_on_association(:products).macro).to eq(:has_many)
    end
  end
end
