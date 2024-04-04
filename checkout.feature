            #language: pt

            Funcionalidade: Checkout US003
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário tenha selecionado o produto e logado na plataforma

            Esquema do Cenário: Obrigatóriedade atendida
            Quando o usuário digitar corretamente os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
            Então o sistema deve capturar o pagamento e exibir a mensagem "Parabéns, compra efetuada com sucesso!"  

            Exemplos:
            | nome       | sobrenome    | pais     | endereco                     | cidade                  | cep        | telefone    | email               |
            | "Maria"    | "Souza"      | "Brasil" | "Rua Gustavo Kabitschki, 89" | "Curitiba"              | "13245678" | "999999999" | "maria@ebac.com"    |
            | "João"     | "Fernandes"  | "Brasil" | "Rua Princesa Izabel, 543"   | "São José dos Pinhais"  | "13536678" | "988888888" | "joao@ebac.com"     |

            Cenário: E-mail com formato inválido
            Quando o usuário digitar incorretamente o campo de e-mail
            Então o sistema deve exibir a mensagem "Não foi possível finalizar seu pedido. E-mail incorreto."  

            Cenário: Obrigatóriedade não atendida
            Quando o usuário deixar em branco os campos obrigatórios
            Então o sistema deve exibir a mensagem "Não foi possível finalizar seu pedido. Preencha os campos obrigatórios."
