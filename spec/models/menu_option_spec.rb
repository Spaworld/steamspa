require 'rails_helper'

RSpec.describe MenuOption, type: :model do

  it 'has a valid factory' do
    expect(create(:menu_option)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a menu' do
      expect{ create(:menu_option, menu_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a menu_item' do
      expect{ create(:menu_option, menu_item_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

   context 'uniqueness' do

     before(:each) do
       create(:menu_option, menu_id: 1, menu_item_id: 1)
     end

     it 'is invalid with duplicate menu_item' do
       expect{ create(:menu_option, menu_item_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)
     end

     it 'is invalid with a duplicate menu' do
       expect{ create(:menu_option, menu_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)
     end
   end

  end

  context 'associations' do

    it 'belongs to menu' do
      expect(MenuOption.reflect_on_association(:menu).macro).to eq(:belongs_to)
    end

    it 'belongs to menu_item' do
      expect(MenuOption.reflect_on_association(:menu_item).macro).to eq(:belongs_to)
    end

  end

end
