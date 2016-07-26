require 'rails_helper'

RSpec.describe ProductPhoto, type: :model do

  it 'has a valid factory' do
    expect(build(:product_photo)).to be_valid
  end

end
