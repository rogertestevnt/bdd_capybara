require_relative 'helper.rb'

   Before do
      @home_page = HomePage.new
      @pesquisa_page=PesquisaPage.new
   end

   After do |scenario|
      @helper = Helper.new
      @name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
      @helper.take_screenshot(@name, 'screenshots/test_failed') if scenario.failed?
      unless @helper.take_screenshot(@name, 'screenshots/test_passed')   
   end

end

Capybara.default_max_wait_time = 5
