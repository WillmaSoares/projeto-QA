# language: pt
Funcionalidade: Serviços de Comunicação Governamental - Gov.br
  Descrição: Validar acessibilidade do serviço "Comunicação Governamental" na categoria Comunicação Pública

  Cenário: Validar acesso ao serviço Comunicação Governamental
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Categorias"
    E eu escolher "Comunicações e Transparência Pública"
    E eu selecionar "Comunicação Pública"
    E eu escolher "Comunicação Governamental"
    Então devo visualizar o texto "Comunicação Governamental"

  Esquema do Cenário: Validar serviços de Comunicação Pública
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Categorias"
    E eu escolher "Comunicações e Transparência Pública"
    E eu selecionar "Comunicação Pública"
    E eu escolher "<servico>"
    Então devo visualizar o texto "<resultado>"

    Exemplos:
      | servico                 | resultado               |
      | Comunicação Governamental | Comunicação Governamental |