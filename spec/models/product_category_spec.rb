require 'rails_helper'

RSpec.describe ProductCategory, type: :model do

  it 'has a valid factory' do
    expect(build(:product_category)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:product_id) }
    it { should validate_presence_of(:category_id) }

  end

  context 'associations' do

    it { should belong_to(:product) }
    it { should belong_to(:category) }

  end

end
