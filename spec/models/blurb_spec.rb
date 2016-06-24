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

end
