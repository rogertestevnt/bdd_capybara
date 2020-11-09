
# Page Object Model implementation for Home page

# This class uses SitePrism which gives a simple, clean and semantic DSL for describing your site using 
# the Page Object Model pattern, for use with Capybara in automated acceptance testing
# Reference: https://rdoc.info/gems/site_prism/frames

# TODO: to include other page elements according to the need

class HomePage < SitePrism::Page
    element :link_qa, 'li#menu-item-226'
    element :link_blog, 'li#menu-item-139'

    def go_to_link(link_name)
        case link_name
        when "Pesquisa - QA"
            link_qa.click
        when "BLOG"
            link_blog.click
        else
            "Incorrect option"
        end
    end
end
