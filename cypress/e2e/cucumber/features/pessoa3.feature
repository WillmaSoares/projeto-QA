# language: pt
Funcionalidade: Serviços de DARF - Gov.br
  Descrição: Validar acessibilidade do serviço "Emitir DARF para pagamento de tributos federais"

  Cenário: Validar acesso ao serviço Emitir DARF
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Serviços"
    E eu escolher "Emitir DARF para pagamento de tributos federais"
    Então devo visualizar o texto "Emitir DARF para pagamento de tributos federais"

  Esquema do Cenário: Validar serviços relacionados ao DARF
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Serviços"
    E eu escolher "<servico>"
    Então devo visualizar o texto "<resultado>"

    Exemplos:
      | servico                                   | resultado                                  |
      | Emitir DARF para pagamento de tributos federais | Emitir DARF para pagamento de tributos federais |