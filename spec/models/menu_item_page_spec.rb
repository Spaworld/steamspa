require 'rails_helper'

RSpec.describe MenuItemPage, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item_page)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:menu_item_id) }
    it { should validate_presence_of(:page_id) }

  end

  context 'associations' do

    it { should belong_to(:menu_item) }
    it { should belong_to(:page) }

  end

end
