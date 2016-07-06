require 'rails_helper'

RSpec.describe Page, type: :model do

  it 'has a working factory' do
    expect(create(:page)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:page, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid with duoe name' do
      expect{ 2.times { create(:page, name: 'foo' ) } }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context 'associations' do

    it 'has many blurbs' do
      expect(Page.reflect_on_association(:blurbs).macro).to eq(:has_many)
    end

    it 'destroys associated blurbs when deleted' do
      page = create(:page)
      expect{ page.destroy }.to change { Blurb.count }.by (-1)
    end

    it 'has many menu items' do
      expect(Page.reflect_on_association(:menu_items).macro).to eq(:has_many)
    end

    it 'has many menu items via MenuPages(join table)' do
      expect { create(:page).menu_items.build }.to_not raise_error
    end

  end

end
