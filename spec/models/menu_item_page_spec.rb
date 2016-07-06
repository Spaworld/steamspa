require 'rails_helper'

RSpec.describe MenuItemPage, type: :model do

    it 'has a working factory' do
      expect(build(:menu_item_page)).to be_valid
    end

    context 'associations' do

      it 'belongs to a page' do
        expect(MenuItemPage.reflect_on_association(:page).macro).to eq(:belongs_to)
      end

      it 'belongs to a menu_item' do
        expect(MenuItemPage.reflect_on_association(:menu_item).macro).to eq(:belongs_to)
      end

    end


    context 'validations' do

      it 'is invalid without a menu_item' do
        expect{ create(:menu_item_page, menu_item: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'is invalid without a page' do
        expect{ create(:menu_item_page, page: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

end
