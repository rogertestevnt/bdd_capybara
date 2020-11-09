require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "json"


Capybara.register_driver :selenium do |app|
  $browser = (ENV['BROWSER'] || 'firefox').to_sym
  Capybara::Selenium::Driver.new(app, :browser => $browser)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://www.lourencodemonaco.com.br/vvtest/'  
end

Capybara.ignore_hidden_elements = false
