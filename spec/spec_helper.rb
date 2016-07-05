require 'simplecov'
SimpleCov.start 'rails'

require 'factory_girl_rails'
require 'support/database_cleaner'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # FactoryGirl Syntax
  config.include FactoryGirl::Syntax::Methods

  # PaperClip test files deletion
  config.after(:suite) do
    FileUtils.rm_rf(Dir["#{Rails.root}/spec/test_files/"])
  end
end
