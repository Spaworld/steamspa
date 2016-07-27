require 'rails_helper'

RSpec.describe MenuItem, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item)).to be_valid
  end

  context 'associations' do

    it { should belong_to(:menu) }
    it { should have_many(:pages).through(:menu_item_pages) }
    it { should have_many(:products).through(:menu_item_products) }
    it { should have_many(:categories).through(:menu_item_categories) }

  end


end
