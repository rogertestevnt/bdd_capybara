
# Page Object Model implementation for Home page

# This class uses SitePrism which gives a simple, clean and semantic DSL for describing your site using 
# the Page Object Model pattern, for use with Capybara in automated acceptance testing
# Reference: https://rdoc.info/gems/site_prism/frames

# TODO: to include other page elements according to the need

class HomePage < SitePrism::Page
    element :link_qa, 'li#menu-item-226'
end