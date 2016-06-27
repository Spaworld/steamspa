require 'rails_helper'

RSpec.describe Photo, type: :model do

  it 'has a valid factory' do
    expect(create(:photo)).to be_valid
  end

  context 'validations' do

    it 'must have an image attached' do
      expect{ create(:photo, image: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid with empty gallery_id AND empty user_id' do
      expect{ create(:photo, user_id: nil, gallery_id: nil, blurb_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    context 'attachement' do

      it 'must be an image' do
        expect{ create(:photo, image:File.new("#{ Rails.root }/spec/support/images/droste")) }.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

  end
  context 'associations' do

    it 'belongs to gallery' do
      expect(Photo.reflect_on_association(:gallery).macro).to eq(:belongs_to)
    end

    it 'belongs to user' do
      expect(Photo.reflect_on_association(:user).macro).to eq(:belongs_to)
    end

    it 'belongs to blurb' do
      expect(Photo.reflect_on_association(:blurb).macro).to eq(:belongs_to)
    end

  end

end
