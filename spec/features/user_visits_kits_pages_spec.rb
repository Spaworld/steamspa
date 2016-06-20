RSpec.feature 'user visits kits page', type: :feature , js: true do

  before(:each) do
    @generators = create_list(:generator, 3)
  end

  scenario 'sees default data' do
    visit kits_path
    expect(page).to have_selector('h4', count: 3)
  end

end
