require 'rails_helper'

RSpec.feature 'User visits sizing tool', type: :feature, js: true do

  before(:each) do
    @generators = create_list(:generator, 3)
  end

  scenario 'sees default state' do
    visit sizing_tool_path
    expect(page).to have_selector('h4', count: 3)
  end

end
