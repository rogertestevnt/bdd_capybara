# Page Object Model implementation for Pesquisa page

# This class uses SitePrism which gives a simple, clean and semantic DSL for describing your site using 
# the Page Object Model pattern, for use with Capybara in automated acceptance testing
# Reference: https://rdoc.info/gems/site_prism/frames

class PesquisaPage < SitePrism::Page

    # TODO: to include the other radios for skills to improve
    element :fisrt_name_field, '#nf-field-5'
    element :last_name_field, '#nf-field-6'
    element :email_field, '#nf-field-7'
    element :confirm_email_field, '#nf-field-8'
    element :telephone_field, '#nf-field-17'
    element :radio_age_first_range, '#nf-label-class-field-10-0'
    element :radio_age_second_range, '#nf-label-class-field-10-1'
    element :radio_age_third_range, '#nf-label-class-field-10-2'
    element :programming_languages_field, '#nf-field-14'
    element :select_experience, '#nf-field-11'
    element :select_interest, '#nf-field-12'
    element :improve_skill_radio_all, '#nf-label-class-field-13-4'
    element :send_button, '#nf-field-16'
    element :carrier_aspiration_field, '#nf-field-15'
    
    def fill_mandatory_info(candidato)
        fisrt_name_field.set candidato['Nome']
        last_name_field.set candidato['Sobrenome']
        email_field.set candidato['Email']
        confirm_email_field.set candidato['Email']
        programming_languages_field.set candidato['Linguagens']
        radio_age_second_range.click
        select_experience.select(candidato['Experiência'])
        select_interest.select(candidato['Interesse'])
        improve_skill_radio_all.click
    end    

 end
