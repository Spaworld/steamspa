require 'rails_helper'

RSpec.describe VariationPhoto, type: :model do

  it 'has a valid factory' do
    expect(build(:variation_photo)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:photo_id) }
    it { should validate_presence_of(:variation_id) }

  end

end
