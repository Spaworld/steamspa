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

    it 'has menu menus through MenuOptions (join table)' do
      expect{ create(:menu_item).menus.build }.to_not raise_error

    end

    it 'has many categories' do
      pending
    end

    it 'has many categories through MenuPages (join table)' do
      pending
    end

    it 'has many product categories' do
      pending
    end

    it 'has many post categories' do
      pending
    end

  end

end
