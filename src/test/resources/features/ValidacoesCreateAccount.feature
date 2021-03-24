#language:pt
@advantageDemo
Funcionalidade: Validacoes AdvantageDemo Cadastro

  Contexto: 
    Dado que esteja na pagina "http://advantageonlineshopping.com/#/"

  @ValidacaoCadastro
  Esquema do Cenario: Validacao de cadastro <cenario>
    Quando acesso a nova conta e realizado
    Entao a pagina create account e exibida
    Quando os dados dos campos obrigatorios sao preenchido com os valores
      | username        | <username>        |
      | email           | <email>           |
      | password        | <password>        |
      | confirmPassword | <confirmPassword> |
    Quando os termos sao aceitos e o registro realizado
    Entao o botao register deve manter desabilitado

    Exemplos: 
      | cenario                            | username       | email             | password    | confirmPassword |
      | usuario em branco                  |                | adriana@teste.com | Password123 | Password123     |
      | usuario com menos de 5 caracteres  | trwq           | adriana@teste.com | Password123 | Password123     |
      | email em branco                    | AdrianaTeste12 |                   | Password123 | Password123     |
      | email invalido                     | AdrianaTeste12 | emailinvalido     | Password123 | Password123     |
      | password em branco                 | AdrianaTeste12 | emailok@email.com |             | Password123     |
      | password com menos de 4 caracteres | AdrianaTeste12 | emailok@email.com | aaa         | Password123     |
      | password sem letra maiuscula       | AdrianaTeste12 | emailok@email.com | aaa12       | Password123     |
      | password sem numero                | AdrianaTeste12 | emailok@email.com | Aaaaa       | Password123     |
      | confirm password em branco         | AdrianaTeste12 | emailok@email.com | Password123 |                 |
      | passwords divergentes              | AdrianaTeste12 | emailok@email.com | Password123 | Password321     |
