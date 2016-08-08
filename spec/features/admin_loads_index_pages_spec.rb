require 'rails_helper'

RSpec.feature "AdminLoadsIndexPages", type: :feature do

  example 'should see the dashboard' do
    login_as(create(:user,:admin), scope: :user )
    visit admin_dashboard_path
    expect(page).to have_content('Dashboard')
  end

  context 'should see links to' do

    before(:each) do
      login_as(create(:user,:admin), scope: :user )
      visit admin_dashboard_path
    end

    example 'products' do
      expect(page).to have_selector(:link, 'Products')
    end

    example 'pages' do
      expect(page).to have_selector(:link, 'Pages')
    end

    example 'posts' do
      expect(page).to have_selector(:link, 'Posts')
    end

    example 'users' do
      expect(page).to have_selector(:link, 'Users')
    end

  end

end
