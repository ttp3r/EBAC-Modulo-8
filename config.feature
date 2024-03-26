            #language: pt

            Funcionalidade: Configurar produto US001
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para então adicionar ao carrinho

            Contexto:
            Dado que o usuário esteja na página do produto

            Cenário: Seleção cor
            Quando for selecionada uma <cor>
            Então deve exibir uma uma foto do produto com essa cor

            Exemplos:
            | cor        |
            | "Azul"     |
            | "Laranja"  |
            | "Vermelho" |

            Cenário: Seleção tamanho
            Quando for selecionado um <tamanho>
            Então deve exibir uma uma foto da modelo vestindo este tamanho

            Exemplos:
            | tamanho |
            | "PP"    |
            | "P"     |
            | "M"     |
            | "G"     |
            | "GG"    |

            Cenário: Sem cor e sem tamanho
            Quando usuário clicar no botão Comprar
            E não houver selecionado tamanho e/ou cor
            Então deve exibir uma mensagem de erro "Por favor, escolha uma cor e o tamanho."

            Cenário: Seleção quantidade máxima
            Quando <quantidade> for maior que 10
            E usuário clicar no botão Comprar
            Então deve exibir uma mensagem de erro "A quantidade máxima para essa compra é 10 unidades."

            Cenário: Seleção quantidade mínima
            Quando <quantidade> não houver sido inserida
            E usuário clicar no botão Comprar
            Então deve exibir uma mensagem de erro "A quantidade mínima para essa compra é 1 unidade."

            Exemplos:
            | quantidade |
            | 1          |
            | 2          |
            | 3          |
            | 4          |
            | 5          |
            | 6          |
            | 7          |
            | 8          |
            | 9          |
            | 10         |

            Cenário: Limpar
            Quando usuário clicar no botão Limpar
            Então deve remover todas as seleções

