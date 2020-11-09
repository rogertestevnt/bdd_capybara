Dado('que eu acesse a página da VV Test') do
    visit("/")
end
  
Dado('acesse o menu {string}') do |string|  
  @home_page.link_qa.click
end

Quando('eu preencher todos os campos obrigatórios') do
  @pesquisa_page.fill_mandatory_info(@candidato)
  @pesquisa_page.send_button.click
end

Então('deve ser direcionado para uma página de sucesso') do
  expect(page).to have_content("Your form has been successfully submitted.")
end