require 'rails_helper'

RSpec.describe MenuItemProduct, type: :model do

  it 'has a working factory' do
    expect(build(:menu_item_product)).to be_valid
  end

  context 'associations' do

    it 'belongs to a product' do
      expect(MenuItemProduct.reflect_on_association(:product).macro).to eq(:belongs_to)
    end

    it 'belongs to a menu_item' do
      expect(MenuItemProduct.reflect_on_association(:menu_item).macro).to eq(:belongs_to)
    end

  end

  context 'validations' do

    it 'is invalid without a product' do
      expect{ create(:menu_item_product, product: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a menu_item' do
      expect{ create(:menu_item_product, menu_item: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

end
