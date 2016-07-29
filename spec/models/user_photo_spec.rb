require 'rails_helper'

RSpec.describe UserPhoto, type: :model do

  it 'has a valid factory' do
    expect(build(:user_photo)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:photo_id) }
    it { should validate_presence_of(:user_id) }

  end

  context 'associations' do

    it { should belong_to(:photo) }
    it { should belong_to(:user) }

  end

end
