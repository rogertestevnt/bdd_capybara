# language: pt

Funcionalidade: Pesquisa com o QA 
Como um recrutador
Quero colher dados da pesquisa 
Para fazer análises mais detalhadas do QA

# Making usage of tags to organize the test execution as the automation project increases
@gui @regression
Cenário: Preencher pesquisa com dados obrigatórios válidos
Dado que eu acesse a página da VV Test
E acesse o menu "Pesquisa - QA"
Quando eu preencher todos os campos obrigatórios:

| Nome        | Rogerio               |
| Sobrenome   | de Oliveira           |
| Email       | roger@email.co        |
| Linguagens  | Todas e mais um pouco |
| Experiência | Menos de 5 anos       |
| Interesse   | Sou mega chato        |

Então deve ser direcionado para uma página de sucesso