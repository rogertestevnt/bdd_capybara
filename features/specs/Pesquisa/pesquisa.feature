# language: pt

Funcionalidade: Pesquisa com o QA 
Como um recrutador
Quero colher dados da pesquisa 
Para fazer análises mais detalhadas do QA

# Making usage of tags to organize the test execution as the automation project increases
@gui @regression @pesquisa
Cenário: Preencher pesquisa com dados obrigatórios válidos
Dado que eu acesse a página da VV Test
E acesse o menu "Pesquisa - QA"
Quando eu preencher todos os campos obrigatórios
Então deve ser direcionado para uma página de sucesso