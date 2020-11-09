# bdd_capybara
Code sample for web automation testing using cucumber, capybara and ruby

For running the sample feature:

Precondition: ruby must be installed in the system where the project will run. 
Reference: https://www.ruby-lang.org/en/documentation/installation/

1) Clone the project

https://github.com/rogertestevnt/bdd_capybara.git

(If git is being used, please issue: $git clone https://github.com/rogertestevnt/bdd_capybara.git)

2) Checkout one of two following branches:

data_table: a data table was used in the specification in order to provide an example of what kind of data is considered valid
data-from-json: uses the original specification and uses a json as data source
(If git is being used, issue: $git checkout data-from-json)

3) Move to the folder named bdd_capybara

4) Issue the command: $bundle install

5) Run the project

5.1) For running using Google Chrome, issue the command: $cucumber -p default
5.2) For running using Mozilla Firefox, issue the command: $cucumber -p html

A report named features-report.html will be available in the project's root folder at the end of each execution
Screenshots will also be available wether in case of success or failures in the scenario. They will be available
in a folder named screenshots (./screenshots)




