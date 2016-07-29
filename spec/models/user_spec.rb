require 'rails_helper'

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

    let(:admin)       { build(:user, :admin) }
    let(:contributor) { build(:user, :contributor) }
    let(:member)      { build(:user, :member) }

    example 'should respond to .admin?' do
      expect(admin.admin?).to be true
    end

    example 'should respond to .contributor?' do
      expect(contributor.contributor?).to be true
    end

    example 'should respond to .member?' do
      expect(member.member?).to be true
    end

    example 'should automatically assign member role to user' do
      expect(subject.member?).to be true
    end


  end

end
