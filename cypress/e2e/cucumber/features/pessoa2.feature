# language: pt
Funcionalidade: Serviços Digitais por Perfil - Gov.br
  Descrição: Validar acesso à página de perfis de usuário no portal Gov.br

  Cenário: Validar acesso ao Meu perfil de usuário
    Dado que eu acesse o site do Gov.br
    Quando eu clicar no botão "Todos os Perfis"
    Então devo visualizar o texto "Meu perfil de usuário"

  Esquema do Cenário: Validar perfis listados
    Dado que eu acesse o site do Gov.br
    Quando eu clicar no botão "Todos os Perfis"
    Então devo visualizar o texto "<perfil>"

  Exemplos:
      | perfil         |
      | Agricultor     |
      | Aposentado     |
      | Empreendedor   |
      | Estudante      |
      | Motorista|
      | Trabalhador    |
      | Turista        |

