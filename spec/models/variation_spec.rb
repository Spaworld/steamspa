require 'rails_helper'

RSpec.describe Variation, type: :model do

  it 'has a working factory' do
    expect(create(:variation)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a type' do
      expect{ create(:variation, type: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a value' do
      expect{ create(:variation, value: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without an associated product id' do
      expect{ create(:variation, product_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to a specific product' do
      expect( Variation.reflect_on_association(:product).macro).to eq(:belongs_to)
    end

  end

end
