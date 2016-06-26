require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  context '#index' do

    it 'renders correct view' do
      get(:index)
      expect(response).to render_template(:index)
    end

    it 'returns 200' do
      get(:index)
      expect(response.status).to eq(200)
    end

  end

end
