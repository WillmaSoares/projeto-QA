# language: pt
Funcionalidade: Consultar Meu Imposto de Renda - Gov.br
  Descrição: Validar acesso ao serviço de consulta do Imposto de Renda no portal Gov.br

  Cenário: Validar acesso ao serviço
    Dado que eu acesse o site do Gov.br
    Quando eu abrir a seção "Serviços"
    E selecionar "Consultar Meu Imposto de Renda"
    Então devo visualizar o texto "Consultar Meu Imposto de Renda"

  Esquema do Cenário: Validar trilha de navegação
    Dado que eu acesse o site do Gov.br
    Quando eu abrir a seção "<secao>"
    Então devo visualizar o texto "<texto>"

    Exemplos:
      | secao     | texto                        |
      | Serviços  | Consultar Meu Imposto de Renda |