require 'rails_helper'

RSpec.describe Gallery, type: :model do

  it 'has a working factory' do
    expect(create(:gallery)).to be_valid
  end

  context 'validations' do
    before(:each) do
      @gallery = create(:gallery, product_id: 1, variation_id: 1)
    end

    it 'multiple instances cannot belong to the same product' do
      expect{ create(:gallery, product_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'multiple instances cannot belong to the same variation' do
      expect{ create(:gallery, variation_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context 'associations' do

    it 'belongs to a product' do
      expect(Gallery.reflect_on_association(:product).macro).to eq(:belongs_to)
    end

    it 'belongs to a variation' do
      expect(Gallery.reflect_on_association(:variation).macro).to eq(:belongs_to)
    end

    it 'has many photos' do
      expect(Gallery.reflect_on_association(:photos).macro).to eq(:has_many)
    end

    it 'will destroy associated photos on self.destroy' do
      @gallery = create(:gallery)
      expect{ @gallery.destroy }.to change { Photo.count }.by(-1)
    end

  end

end
