require 'rails_helper'

RSpec.describe PostCategory, type: :model do

  it 'has a valid factory' do
    expect(build(:post)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:category_id) }
    it { should validate_presence_of(:post_id) }

  end

  context 'associations' do

    it { should belong_to(:category) }
    it { should belong_to(:post) }

  end

end
