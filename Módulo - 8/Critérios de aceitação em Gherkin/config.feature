Feature: Configurar Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu acesse a página do produto
        
    Scenario Outline: Testar as configurações de produto
        When eu selecionar o <tamanho>; <cor>; <quantidade>
        And clicar em "COMPRAR"
        Then deve aparecer a <mensagem>

        Examples:
            | cor     | tamanho | quantidade | mensagem                         |
            | "Black" | "XL"    | "1"        | "Produto adicionado ao carrinho" |
            | " "     | "XS"    | "2"        | "Selecione a cor do produto"     |
            | "Gray"  | " "     | "3"        | "Selecione o tamanho do produto" |

    Scenario Outline: Testar limite de quantidade permitida
        When eu selecionar a <quantidade>
        And clicar em "COMPRAR"
        Then deve aparecer a <mensagem>

        Examples:
            | quantidade | mensagem                                            |
            | "9"        | "Produto adicionado ao carrinho"                    |
            | "10"       | "Produto adicionado ao carrinho"                    |
            | "11"       | "O limite de compra, por produto, é de 10 unidades" |

    Scenario: Remover tamanho e cor do produto
        When o tamanho e a cor do produto estiver selecionado
        And eu clicar em "LIMPAR"
        Then o sistema deve desmarcar o tamanho e a cor





