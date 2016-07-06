require 'rails_helper'

RSpec.describe Attribute, type: :model do

  it 'has a working factory' do
    expect(create(:attribute)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:attribute, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a value' do
      expect{ create(:attribute, value: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a variation' do
      expect{ create(:attribute, variation_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to validation' do
      expect(Attribute.reflect_on_association(:variation).macro).to eq(:belongs_to)
    end

  end

end
