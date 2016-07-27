require 'rails_helper'

RSpec.describe MenuItemCategory, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item_category)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:menu_item_id) }
    it { should validate_presence_of(:category_id) }

  end

end
