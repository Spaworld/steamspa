require 'rails_helper'

RSpec.describe MenuItemPost, type: :model do

  it 'has a valid factory' do
    expect(build(:menu_item_post)).to be_valid
  end

  context 'associations' do

    it { should  belong_to(:post) }
    it { should belong_to(:menu_item) }

  end

end
