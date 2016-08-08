require 'rails_helper'

RSpec.describe Admin::BaseController, type: :controller do

  login_admin

  context '#index' do

    it 'returns 200 response code' do
      get :index
      expect(response.status).to eq(200)
    end

  end

  context 'authorization' do

    it 'should return AccessDenied message on authorzied access attempt' do
      user = create(:user)
      @request.env['devise.mappings'] = Devise.mappings[:user]
      sign_in user
      get :index
      expect(flash[:alert]).to eq('You are not authorized to view this page')
    end

  end

end
