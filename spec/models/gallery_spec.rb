require 'rails_helper'

RSpec.describe Gallery, type: :model do
  it 'has a working factory' do
    expect(create(:gallery)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a product' do
      expect{ create(:variation, product_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end
  context 'associations' do
    it 'belongs to a product' do
      expect(Gallery.reflect_on_association(:product).macro).to eq(:belongs_to)
    end
  end

end
