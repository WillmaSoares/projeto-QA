# language: pt
Funcionalidade: Páginas de Energia Elétrica - Gov.br
  Descrição: Validar que as páginas de Energia Elétrica estão acessíveis no portal Gov.br

  Esquema do Cenário: Validar páginas de Energia Elétrica
    Dado que eu acesse a página Energia, Minerais e Combustíveis
    Quando eu selecionar "Energia Elétrica"
    E eu escolher "<pagina>"
    Então devo visualizar o texto "<pagina>"

    Exemplos:
      | pagina                   |
      | Pedidos de Alterações    |
      | Aprovações e Homologações|
      | Certidões e Certificados |