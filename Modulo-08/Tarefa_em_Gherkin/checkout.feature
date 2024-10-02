 #language: pt-br

Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que eu esteja a página de Checkout da EBAC SHOP
        
    Cenário: Preencher campos obrigatórios da compra
        Quando eu preencher todos os campos obrigatórios
        E clicar em "finalizar compra"
        Então deve exibir uma mensagem "Compra efetuada com sucesso!"

    Cenário: Validar formato de email
        Quando eu preencher o campo email
        E o email estiver fora do formato padrão
        Então deve exibir uma mensagem "Email com formato inválido"

    Esquema do Cenário: Cadastrar com campos vazios
        Quando eu deixar o <campoObrigatorio> vazio
        E clicar em "finalizar compra"
        Então deve exibir a <mensagem>

        Exemplos:
            | campoObrigatorio | mensagem                           |
            | nome             | "Preencha todos os campos com o *" |
            | sobrenome        | "Preencha todos os campos com o *" |
            | endereço         | "Preencha todos os campos com o *" |
            | cidade           | "Preencha todos os campos com o *" |
            | cep              | "Preencha todos os campos com o *" |
            | telefone         | "Preencha todos os campos com o *" |
