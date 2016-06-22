require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'has a valid factory' do
    expect(create(:product)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:product, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without description' do
      expect{ create(:product, description: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without features' do
      expect{ create(:product, features: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'has many categories' do
      expect(Product.reflect_on_association(:categories).macro).to eq(:has_many)
    end

    it 'has many product_categories(join table)' do
      expect { create(:product).categories.build }.to_not raise_error
    end

    it 'has many variations' do
      expect(Product.reflect_on_association(:variations).macro).to eq(:has_many)
    end

    it 'will destroy associated variations on self.destroy' do
      product = create(:product)
      expect{ product.destroy }.to change { Variation.count }.by(-1)
    end

  end

end
