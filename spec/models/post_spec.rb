require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'has a working factory' do
    expect(create(:post)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a title' do
      expect{ create(:post, title: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without a body' do
      expect{ create(:post, body: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    context 'has to have unique' do

      before(:each) do
        create(:post, title: 'test', body: 'test')
      end

      example 'title' do
        expect{ create(:post, title: 'test') }.to raise_error(ActiveRecord::RecordInvalid)
      end

      example 'body' do
        expect{ create(:post, body: 'test') }.to raise_error(ActiveRecord::RecordInvalid)
      end

    end

  end

  context 'associations' do

    it 'has many categories' do
      expect( Post.reflect_on_association(:categories).macro ).to eq(:has_many)
    end

    it 'has many categories thorugh PostCategories(join table)' do
      expect { create(:post).categories.build }.to_not raise_error
    end

  end

end
