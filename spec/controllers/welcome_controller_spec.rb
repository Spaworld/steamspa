require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  context 'index' do

    before(:each) do
      get :index
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

  end

end
