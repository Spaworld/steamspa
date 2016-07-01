require 'rails_helper'

RSpec.describe Menu, type: :model do

  it 'has a valid factory' do
    expect(create(:menu)).to be_valid
  end

  context 'validations' do

    it 'is invalid without a name' do
      expect{ create(:menu, name: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

 context 'associations' do

   it 'has many menu items' do
     expect(Menu.reflect_on_association(:menu_items).macro).to eq(:has_many)
   end

 end

end
