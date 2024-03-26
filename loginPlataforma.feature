            #language: pt

            Funcionalidade: Login na plataforma US002
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário esteja na página de login do portal EBAC

            Cenário: Autenticação válida
            Quando o usuário digitar o <email> cadastrado
            E a <senha> correspondente deste usuário
            Então deve redirecionar para a tela de checkout

            Exemplos:
            | email                   | senha      | usuario  |
            | "talita.ebac@gmail.com" | "ebac123"  | "Talita" |
            | "ana.ebac@gmail.com"    | "1senha23" | "Ana"    |
            | "cesar.ebac@gmail.com"  | "sebac2"   | "Cesar"  |
            | "julia.ebac@gmail.com"  | "se56bac2" | "Julia"  |
            | "luiz.ebac@gmail.com"   | "ebac502"  | "Luiz"   |
            | "marcos.ebac@gmail.com" | "432ebac"  | "Marcos" |
            | "maria.ebac@gmail.com"  | "345senha" | "Maria"  |

            Cenário: Autenticação e-mail inválido
            Quando o usuário digitar um <email> não cadastrado
            E <senha>
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Autenticação senha inválida
            Quando o usuário digitar um <email> cadastrado
            E uma senha <senha> incorreta
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

