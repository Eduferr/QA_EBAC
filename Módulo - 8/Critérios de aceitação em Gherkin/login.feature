Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu acesse a página de Autenticação do site EBAC-SHOP
        
    Scenario: Autenticação Válida
        When eu digitar o usuário "edusantos@evoluindo.com.br"
        And a senha "senha@123"
        Then deve ser direcionado para a tela de checkout

    Scenario: Usuário ou senha inválido
        When eu digitar o usuário "edusantos.com.br"
        And a senha "xpo123"
        Then deve exibir a mensagem "Usuário ou senha inválidos"
