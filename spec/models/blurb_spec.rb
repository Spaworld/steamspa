require 'rails_helper'

RSpec.describe Blurb, type: :model do

  it 'has a valid factory' do
    expect(create(:blurb)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:blurb, name: nil) }.to raise_exception(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without content' do
      expect{ create(:blurb, content: nil) }.to raise_exception(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'belongs to a page' do
      expect(Blurb.reflect_on_association(:page).macro).to eq(:belongs_to)
    end

  end

end
