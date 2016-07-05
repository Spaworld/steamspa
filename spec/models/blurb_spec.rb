require 'rails_helper'

RSpec.describe Blurb, type: :model do

  it 'has a valid factory' do
    expect(create(:blurb)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:blurb, name: nil) }.to raise_exception(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to a page' do
      expect(Blurb.reflect_on_association(:page).macro).to eq(:belongs_to)
    end

    it 'has many photos' do
      expect(Blurb.reflect_on_association(:photos).macro).to eq(:has_many)
    end

    it 'destroys associated photo on #delete' do
      blurb = create(:blurb)
      blurb.galleries.destroy_all
      expect{ blurb.destroy }.to change{ Photo.count }.by(-1)
    end

    it 'has many galleries' do
      expect(Blurb.reflect_on_association(:galleries).macro).to eq(:has_many)
    end

    it 'destroys associated galleries on #delete' do
      blurb = create(:blurb)
      expect{ blurb.destroy }.to change{ Gallery.count }.by(-1)
    end

  end

  context 'seeded blurbs fetching' do

    before(:each) do
      allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new('development'))
    end

    it 'fetches the logo image' do
      # create(:blurb, name: 'Logo', photos: build_list(:photo, 1, :logo))
      blurb = double(Blurb)
      photos = build_list(:photo, 1)
      allow(blurb).to receive(:logo_image).and_return(photos)
      expect(blurb.logo_image).to eq(photos)
      # expect(Blurb.logo_image).to_not be_nil
    end

    it 'fetches the promo message blurb' do
      create(:blurb, name: 'Promo Message', photos:  build_list(:photo, 1, :other_photo))
      expect(Blurb.promo_message_blurb).to_not be_nil
    end


  end

end
