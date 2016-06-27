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

end
