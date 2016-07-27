require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }

  end

  context 'associations' do

    it { should have_many(:variations).dependent(:destroy) }

    it 'should implicitly delele associated variation on self#destroy' do
      product = create(:product)
      product.variations << create(:variation)
      expect { product.destroy }.to change{ Variation.count }.by(-1)
    end

    it { should have_many(:photos).through(:product_photos) }

    it 'should destroy associated product_photo on self#destroy' do
      product = create(:product)
      product.photos << create(:photo)
      expect { product.destroy }.to change{ ProductPhoto.count }.by(-1)
    end

    it { should have_many(:categories).through(:product_categories) }

    it { should have_many(:menu_items).through(:menu_item_products).dependent(:destroy) }

  end

end
