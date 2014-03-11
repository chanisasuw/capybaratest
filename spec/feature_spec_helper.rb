require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'capybara/rspec'
# require 'capybara-screenshot/capybara'
require 'rspec/autorun'
require 'selenium-webdriver'
Dir.glob(File.dirname(__FILE__) + '/factories/*', &method(:require))
 
# Capybara configuration
Capybara.default_driver = :selenium
# Capybara.save_and_open_page_path = File.dirname(__FILE__) + '/../snapshots'
# Capybara::Screenshot.autosave_on_failure = true

# RSpec configuration
RSpec.configure do |config|
  config.failure_color = :red
  config.tty = true
  config.color = true

  config.before(:all) do
    # Create fixtures
  end
  config.after(:all) do
    # Destroy fixtures
  end
  # config.around(:each) do |example|
  #   begin
  #     example.run
  #   rescue Exception => ex
  #     save_and_open_page
  #     raise ex
  #   end
  # end
end