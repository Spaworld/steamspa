require 'rails_helper'

RSpec.describe User, type: :model do

  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end

  context 'validations' do

    it 'is invalid with an email address' do
      expect { create(:user, email: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid with a misformatted email address' do
      expect { create(:user, email: 'thomyorke') }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'has one profile photo' do
      expect( User.reflect_on_association(:photo).macro ).to eq(:has_one)
    end

    example 'user_id can be stored in photo instance' do
      user = create(:user)
      expect{ user.photo }.to_not raise_error
    end

  end

end
