require 'rails_helper'

RSpec.describe MenuItem, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item)).to be_valid
  end


  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:menu_item, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'has many menus' do
      expect(MenuItem.reflect_on_association(:menus).macro).to eq(:has_many)
    end

    it 'has many menus through MenuOptions (join table)' do
      expect{ create(:menu_item).menus.build }.to_not raise_error

    end

    it 'has many categories' do
      expect(MenuItem.reflect_on_association(:categories).macro).to eq(:has_many)
    end

    it 'has many categories through MenuCategories (join table)' do
      expect{ create(:menu_item).categories.build }.to_not raise_error
    end

    it 'has many many pages' do
      expect(MenuItem.reflect_on_association(:pages).macro).to eq(:has_many)
    end

    it 'has many pages through MenuPages (join table)' do
      expect{ create(:menu_item).pages.build }.to_not raise_error
    end

    it 'has many product categories' do
      expect(MenuItem.reflect_on_association(:products).macro).to eq(:has_many)
    end

    it 'has many products through MenuItemProducts (join table)' do
      expect{ create(:menu_item).products.build }.to_not raise_error
    end

    it 'has many post categories' do
      pending
    end

  end

end
