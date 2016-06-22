RSpec.feature 'user visits kits page', type: :feature , js: true do

  scenario 'sees correct number of generators' do
    @generators = create_list(:generator, 3)
    visit kits_path
    expect(page).to have_selector('h4', count: 3)
  end

  context 'sees generator attributes' do
    before(:each) do
      @product = create(:product)
    end

    scenario 'description' do
      puts @product.inspect
      visit kits_path
      expect(page).to have_content(@product.description)
    end

    scenario 'features' do
      visit kits_path
      puts @product.inspect
      expect(page).to have_content(@product.features)
    end
  end

end
