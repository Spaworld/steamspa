require 'rails_helper'

RSpec.describe Blurb, type: :model do

  it 'has a working factory' do
    expect(build(:blurb)).to be_valid
  end

  context 'associations' do

    it { should have_and_belong_to_many(:photos) }

  end

end
