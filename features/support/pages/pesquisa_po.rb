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
    element :improve_skill_radio_tech, '#nf-label-class-field-13-0'
    element :improve_skill_radio_business, '#nf-label-class-field-13-1'
    element :improve_skill_radio_communication, '#nf-label-class-field-13-2'
    element :improve_skill_radio_leadership, '#nf-label-class-field-13-3'
    element :improve_skill_radio_all, '#nf-label-class-field-13-4'
    element :send_button, '#nf-field-16'
    element :carrier_aspiration_field, '#nf-field-15'
    
    def fill_mandatory_info(candidato)
        fisrt_name_field.set candidato[:Nome]
        last_name_field.set candidato[:Sobrenome]
        email_field.set candidato[:Email]
        confirm_email_field.set candidato[:Email]
        programming_languages_field.set candidato[:Linguagens]
        choose_age_interval(candidato[:Idade])
        select_experience.select(candidato[:Experiência])
        select_interest.select(candidato[:Interesse])
        choose_skill_to_improve(candidato[:Skill])
    end
    
    def send_form()
        send_button.click()
    end

    def choose_age_interval(age)
        case age
        when "18-30"
            radio_age_first_range.click
        when "31-49"
            radio_age_second_range.click
        when "49+"
            radio_age_third_range.click
        else
            "Incorrect option"
        end 
    end

    def choose_skill_to_improve(skill)
        case skill
        when "Tecnico"
            improve_skill_radio_tech.click
        when "Negocio"
            improve_skill_radio_business.click
        when "Comunicacao"
            improve_skill_radio_communication.click
        when "Lideranca"
            improve_skill_radio_leadership.click
        when "Todas as anteriores"
            improve_skill_radio_all.click
        else
            "Incorrect option"
        end 
    end

 end
