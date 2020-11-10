Dado('que eu acesse a página da VV Test') do
    visit("/")
end
  
Dado('acesse o menu {string}') do |string|  
  @home_page.go_to_link(string)
end

Quando('eu preencher todos os campos obrigatórios:') do |table|
  @candidato=table.rows_hash
  @pesquisa_page.fill_mandatory_info(@candidato)
  @pesquisa_page.send_form()
end

Então('deve ser direcionado para uma página de sucesso') do
  expect(page).to have_content(PesquisaPage::SUCCESS_MESSAGE)
end