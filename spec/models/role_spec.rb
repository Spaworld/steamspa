require 'rails_helper'

RSpec.describe Role, type: :model do

  it 'has a valid factory' do
    expect(build(:role)).to be_valid
  end

  context 'validations' do

    it { should validate_inclusion_of(:resource_type).
      in_array(Rolify.resource_types)
    }

  end

  context 'associations' do

    it { should have_and_belong_to_many(:users) }

  end

end
