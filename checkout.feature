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
            | "Fátima"   | "Rocha"      | "Brasil" | "Rua São João Batista, 4325" | "Pinhais"               | "13639868" | "977777777" | "fatima@ebac.com"   |
            | "Pedro"    | "Drescher"   | "Brasil" | "Rua Madagascar, 09"         | "Campina Grande do Sul" | "89345678" | "996666666" | "pedro@ebac.com"    |
            | "Vinícius" | "Ferreira"   | "Brasil" | "Rua Nova Yorque, 678"       | "Almirante Tamandaré"   | "84695618" | "955555555" | "vinicius@ebac.com" |
            | "Bruna"    | "dos Santos" | "Brasil" | "Rua Fernando Pessoa, 989"   | "Piraquara"             | "89341234" | "944444444" | "bruna@ebac.com"    |
            | "Bianca"   | "Duman"      | "Brasil" | "Rua Canaã, 679"             | "Colombo"               | "81478678" | "922222222" | "bianca@ebac.com"   |
            | "Luana"    | "Erguvan"    | "Brasil" | "Avenida Ribeira, 2354"      | "Campo Largo"           | "89378528" | "911111111" | "luana@ebac.com"    |

            Cenário: E-mail com formato inválido
            Quando o usuário digitar incorretamente o campo de e-mail
            Então o sistema deve exibir a mensagem "Não foi possível finalizar seu pedido. E-mail incorreto."  

            Cenário: Obrigatóriedade não atendida
            Quando o usuário deixar em branco os campos obrigatórios
            Então o sistema deve exibir a mensagem "Não foi possível finalizar seu pedido. Preencha os campos obrigatórios."
