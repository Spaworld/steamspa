require 'rails_helper'

RSpec.describe PostCategory, type: :model do

  it 'has a working factory' do
    expect(create(:post_category)).to be_valid
  end

  context 'validations' do

    it 'belongs to a category' do
      expect(PostCategory.reflect_on_association(:category).macro).to eq(:belongs_to)
    end

    it 'belongs to a post' do
      expect(PostCategory.reflect_on_association(:post).macro).to eq(:belongs_to)
    end

    context 'validations' do

      it 'is invalid without a category' do
        expect{ create(:post_category, category_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it 'is invalid without a post' do
        expect{ create(:post_category, post_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

  end
end
