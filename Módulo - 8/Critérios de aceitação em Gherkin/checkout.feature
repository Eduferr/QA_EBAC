Feature: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que eu esteja a página de Checkout da EBAC SHOP
        
    Scenario: Preencher campos obrigatórios da compra
        When eu preencher todos os campos obrigatórios
        And clicar em "finalizar compra"
        Then deve exibir uma mensagem "Compra efetuada com sucesso!"

    Scenario: Validar formato de email
        When eu preencher o campo email
        And o email estiver fora do formato padrão
        Then deve exibir uma mensagem "Email com formato inválido"

    Scenario Outline: Cadastrar com campos vazios
        When eu deixar o <campoObrigatorio> vazio
        And clicar em "finalizar compra"
        Then deve exibir a <mensagem>

        Examples:
            | campoObrigatorio | mensagem                           |
            | nome             | "Preencha todos os campos com o *" |
            | sobrenome        | "Preencha todos os campos com o *" |
            | endereço         | "Preencha todos os campos com o *" |
            | cidade           | "Preencha todos os campos com o *" |
            | cep              | "Preencha todos os campos com o *" |
            | telefone         | "Preencha todos os campos com o *" |
