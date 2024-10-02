 #language: pt-br

Funcionalidade: Configurar Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que eu acesse a página do produto
        
    Esquema do Cenário: Testar as configurações de produto
        Quando eu selecionar o <tamanho>; <cor>; <quantidade>
        E clicar em "COMPRAR"
        Então deve aparecer a <mensagem>

        Exemplos:
            | cor     | tamanho | quantidade | mensagem                         |
            | "Black" | "XL"    | "1"        | "Produto adicionado ao carrinho" |
            | " "     | "XS"    | "2"        | "Selecione a cor do produto"     |
            | "Gray"  | " "     | "3"        | "Selecione o tamanho do produto" |

    Esquema do Cenário: Testar limite de quantidade permitida
        Quando eu selecionar a <quantidade>
        E clicar em "COMPRAR"
        Então deve aparecer a <mensagem>

        Exemplos:
            | quantidade | mensagem                                            |
            | "9"        | "Produto adicionado ao carrinho"                    |
            | "10"       | "Produto adicionado ao carrinho"                    |
            | "11"       | "O limite de compra, por produto, é de 10 unidades" |

    Cenário: Remover tamanho e cor do produto
        Quando o tamanho e a cor do produto estiver selecionado
        E eu clicar em "LIMPAR"
        Então o sistema deve desmarcar o tamanho e a cor





