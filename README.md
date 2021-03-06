# bdd_capybara
Code sample for web automation testing using Cucumber, Capybara and Ruby

Please follow the steps below for running the sample feature:

**Precondition**: Ruby must be installed in the system where the project will run. 
Reference: https://www.ruby-lang.org/en/documentation/installation/

## Clone the project

https://github.com/rogertestevnt/bdd_capybara.git

Example using git: `git clone` https://github.com/rogertestevnt/bdd_capybara.git

## Checkout one of the two following branches:

**data_table**: a Data Table  (for details, please visit https://cucumber.io/docs/gherkin/reference/) was used in the specification in order to provide an example of what kind of data is considered valid

If git is being used, issue: `git checkout data_table`

**data-from-json**: uses the original specification and uses a json as data source

If git is being used, issue: `git checkout data-from-json`

## Go to the project folder
Move to the folder named **bdd_capybara**

## Install the dependencies
Issue the command: `bundle install`

## Run the project

For running using **Google Chrome**, issue the command: `cucumber -p default`

For running using **Mozilla Firefox**, issue the command: `cucumber -p html`

A report named **features-report.html** will be available in the project's root folder at the end of each execution

**Screenshots** will also be available wether in case of success or failures in the scenario. They will be available
in a folder named screenshots (./screenshots)




