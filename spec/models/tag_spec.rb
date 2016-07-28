require 'rails_helper'

RSpec.describe Tag, type: :model do

  it 'has a working factory' do
    expect(build(:tag)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:name) }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:photos) }
    it { should have_and_belong_to_many(:posts) }
    it { should have_and_belong_to_many(:products) }
    it { should have_and_belong_to_many(:pages) }

  end

end
