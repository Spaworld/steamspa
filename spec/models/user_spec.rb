require 'rails_helper'
require 'cancan/matchers'

RSpec.describe User, type: :model do

  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  context 'validations' do

    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }

  end

  context 'associations' do

    it { should have_many(:photos).through(:user_photos).dependent(:destroy) }

  end

  it 'should destroy associated photos after self#destroy' do
    user = create(:user, :with_photos)
    expect { user.destroy }.to change { Photo.count }.by(-1)
  end

  context 'roles' do

    it 'shuold create a has_role? helper method' do
      expect(subject).to respond_to(:has_role?)
    end

    it 'should assign corresponding .has_role? methods on Role#create' do
      create(:role, name: 'admin')
      expect(subject.has_role?(:admin)).to be false
    end

    it 'should add roles to user' do
      create(:role, name: 'admin')
      subject.add_role(:admin)
      expect(subject.has_role?(:admin)).to be true
    end

    it 'should remove roles from user' do
      admin = create(:user, :admin)
      admin.remove_role(:admin)
      expect(admin.has_role?(:admin)).to be false
    end

    it 'should not b*tch and moan about non-existing roles' do
      expect(subject.has_role?(:foobaritto)).to be false
    end

  end

  describe 'abilities' do

    subject(:ability) { Ability.new(user) }

    context 'admin' do
      let(:user) { create(:user, :admin) }
      it { should be_able_to(:manage, :all) }
    end

    context 'user' do
      let(:user) { create(:user) }
      it { should be_able_to(:read, :all) }
    end

  end

end
