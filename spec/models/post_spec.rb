require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'has a valid factory' do
    expect(build(:post)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }

  end

  context 'associations' do

    it { should have_many(:menu_items).through(:menu_item_posts).dependent(:destroy) }
    it { should have_many(:categories).through(:post_categories) }
    it { should have_and_belong_to_many(:tags) }

  end

end
