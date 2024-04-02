            #language: pt

            Funcionalidade: Configurar produto US001
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para então adicionar ao carrinho

            Contexto:
            Dado que o usuário esteja na página do produto

            Esquema do Cenário: Seleção de cor, tamanho e quantidade
            Quando forem selecioados <cor>, <tamaho> e <quanitdade>
            Então deve habilitar o botão Comprar para avançar no checkout

            Exemplos:
            | cor        | tamanho | quantidade |
            | "Azul"     | "PP"    | 1          |
            | "Laranja"  | "P"     | 2          |
            | "Vermelho" | "M"     | 3          |
            |            | "G"     | 4          |
            |            | "GG"    | 5          |
            |            |         | 6          |
            |            |         | 7          |
            |            |         | 8          |
            |            |         | 9          |
            |            |         | 10         |

            Cenário: Sem cor e sem tamanho
            Quando usuário clicar no botão Comprar
            E não houver selecionado tamanho e/ou cor
            Então deve exibir uma mensagem de erro "Por favor, escolha uma cor e o tamanho."

            Cenário: Seleção quantidade máxima
            Quando quantidade for maior que 10
            E usuário clicar no botão Comprar
            Então deve exibir uma mensagem de erro "A quantidade máxima para essa compra é 10 unidades."

            Cenário: Seleção quantidade mínima
            Quando quantidade não houver sido inserida
            E usuário clicar no botão Comprar
            Então deve exibir uma mensagem de erro "A quantidade mínima para essa compra é 1 unidade."

            Cenário: Limpar
            Quando usuário clicar no botão Limpar
            Então deve remover todas as seleções

