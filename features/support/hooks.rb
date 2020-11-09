require_relative 'helper.rb'
require 'json'

   Before do
      @home_page = HomePage.new
   end

   # Below there is an example of a setup for running an specific tag
   Before ('@pesquisa') do
      @pesquisa_page=PesquisaPage.new
      # Using a json file as the data source for providing the info required for running the scenario
      # This is a better approach instead of having hard coded data (unless the data comes from the feature specification)
      file = File.read('./resources/candidato.json')
      @candidato = JSON.parse(file)
   end


   After do |scenario|
      @helper = Helper.new
      @name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
      @helper.take_screenshot(@name, 'screenshots/test_failed') if scenario.failed?
      unless @helper.take_screenshot(@name, 'screenshots/test_passed')     
   end

end

Capybara.default_max_wait_time = 5
