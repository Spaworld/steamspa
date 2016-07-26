require 'rails_helper'

RSpec.describe Category, type: :model do

  it 'has a valid factory' do
    expect(build(:category)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:photos) }
    it { should have_many(:products).through(:product_categories) }
    it { should have_one(:parent) }

    it 'should return parent category' do
      parent_cateogry = create(:category)
      child_category = create(:category)
      child_category.parent = parent_cateogry
      expect(child_category.parent).to eq(parent_cateogry)

    end

  end

end
