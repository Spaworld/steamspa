require 'rails_helper'

RSpec.describe Menu, type: :model do

  it 'has a working factory' do
    expect(build(:menu)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

  end

  context 'associations' do

    it { should have_many(:menu_items) }

  end

end
