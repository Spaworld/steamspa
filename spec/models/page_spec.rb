require 'rails_helper'

RSpec.describe Page, type: :model do

  it 'should have a valid factory' do
    expect(build(:page)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:blurbs) }
    it { should have_many(:menu_items).through(:menu_item_pages).dependent(:destroy) }
    it { should have_and_belong_to_many(:tags) }

  end

end
