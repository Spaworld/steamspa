require 'rails_helper'

RSpec.describe MenuItemPost, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item_post)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a menu item' do
      expect{ create(:menu_item_post, menu_item: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a post' do
      expect{ create(:menu_item_post, post: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to a menu item' do
      expect(MenuItemPost.reflect_on_association(:menu_item).macro).to eq(:belongs_to)
    end

    it 'belongs to a post' do
      expect(MenuItemPost.reflect_on_association(:post).macro).to eq(:belongs_to)
    end

  end

end
