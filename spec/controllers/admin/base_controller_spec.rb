require 'rails_helper'

RSpec.describe Admin::BaseController, type: :controller do

  context '#index' do

    it 'returns 200' do
      get :index
      expect(response.status).to eq(200)
    end

  end

end
