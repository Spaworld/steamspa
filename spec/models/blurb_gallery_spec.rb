require 'rails_helper'

RSpec.describe BlurbGallery, type: :model do

  it 'has a working factory' do
    expect(create(:blurb_gallery)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a gallery_id' do
      expect{ create(:blurb_gallery, gallery_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a blurb_id' do
      expect{ create(:blurb_gallery, blurb_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to a gallery' do
      expect(BlurbGallery.reflect_on_association(:gallery).macro).to eq(:belongs_to)
    end

    it 'belongs to a blurb' do
      expect(BlurbGallery.reflect_on_association(:blurb).macro).to eq(:belongs_to)
    end

  end

end
