# language: pt
Funcionalidade: Serviços de Dívida Ativa da União - Gov.br
  Descrição: Validar acessibilidade do serviço "Emitir Darf - dívida ativa da União"

  Cenário: Acesso direto ao serviço Emitir Darf
    Dado que eu acesse a página inicial do Gov.br
    Quando eu navegar até "Serviços"
    E eu clicar em "Emitir Darf - dívida ativa da União"
    Então devo visualizar o texto "Emitir Darf - dívida ativa da União"

  Esquema do Cenário: Navegação em serviços de Dívida Ativa
    Dado que eu acesse a página inicial do Gov.br
    Quando eu navegar até "<menu>"
    E eu clicar em "<servico>"
    Então devo visualizar o texto "<resultado>"

    Exemplos:
      | menu      | servico                                | resultado                             |
      | Serviços  | Emitir Darf - dívida ativa da União    | Emitir Darf - dívida ativa da União   |