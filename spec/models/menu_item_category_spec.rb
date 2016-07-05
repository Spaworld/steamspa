require 'rails_helper'

RSpec.describe MenuItemCategory, type: :model do

  it 'has a working factory' do
    expect(create(:menu_item_category)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a category' do
      expect{ create(:menu_item_category, category_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a menu_item' do
      expect{ create(:menu_item_category, menu_item_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to menu' do
      expect(MenuItemCategory.reflect_on_association(:menu_item).macro).to eq(:belongs_to)
    end

    it 'belongs to category' do
      expect(MenuItemCategory.reflect_on_association(:category).macro).to eq(:belongs_to)
    end

  end

end
