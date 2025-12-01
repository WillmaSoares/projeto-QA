# language: pt
Funcionalidade: Serviços de Saúde e Vigilância Sanitária - Gov.br
  Descrição: Validar acessibilidade dos serviços da categoria "Fiscalização" em Saúde e Vigilância Sanitária

  Cenário: Validar acesso ao serviço de Medicamentos e Produtos para Saúde
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Categorias"
    E eu escolher "Saúde e Vigilância Sanitária"
    E eu selecionar "Fiscalização"
    E eu escolher "Medicamentos e Produtos para Saúde"
    Então devo visualizar o texto "Medicamentos e Produtos para Saúde"

  Esquema do Cenário: Validar serviços de Fiscalização em Saúde e Vigilância Sanitária
    Dado que eu acesse a página inicial do Gov.br
    Quando eu selecionar "Categorias"
    E eu escolher "Saúde e Vigilância Sanitária"
    E eu selecionar "Fiscalização"
    E eu escolher "<servico>"
    Então devo visualizar o texto "<resultado>"

    Exemplos:
      | servico                                   | resultado                                   |
      | Medicamentos e Produtos para Saúde        | Medicamentos e Produtos para Saúde          |
      | Outras Autorizações, Certificados e Informações | Outras Autorizações, Certificados e Informações |