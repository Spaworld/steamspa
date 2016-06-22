require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'has a valid factory' do
    expect(create(:product)).to be_valid
  end

  context 'validations' do

    it 'invalid without a name' do
      expect{ create(:product, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'invalid without description' do
      expect{ create(:product, description: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'invalid without features' do
      expect{ create(:product, features: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  # context 'associations' do
  #   it 'belongs to a cateogory' do
  #     pending
  #   end
  # end
end
