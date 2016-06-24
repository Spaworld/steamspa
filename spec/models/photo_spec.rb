require 'rails_helper'

RSpec.describe Photo, type: :model do

  it 'has a valid factory' do
    expect(create(:photo)).to be_valid
  end

  context 'validations' do

    it 'must have an image attached' do
      expect{ create(:photo, image: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    context 'attachement' do

      it 'must be an image' do
        expect{ create(:photo, image:File.new("#{ Rails.root }/spec/support/images/droste")) }.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

  end

end
