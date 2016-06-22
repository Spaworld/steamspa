require 'rails_helper'

RSpec.describe Category, type: :model do

  it 'has a valid factory' do
    expect(create(:category)).to be_valid
  end

  context 'validations' do

    it 'invalid without a name' do
      expect{ create(:category, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'invalid without description' do
      expect{ create(:category, description: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'has many products' do
      expect(Category.reflect_on_association(:products).macro).to eq(:has_many)
    end

    it 'has many product_categories(join table)' do
      expect { create(:category).products.build }.to_not raise_error
    end

  end

end
