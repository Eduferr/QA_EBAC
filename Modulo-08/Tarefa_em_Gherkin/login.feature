 #language: pt-br

Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que eu acesse a página de Autenticação do site EBAC-SHOP
        
    Cenário: Autenticação Válida
        Quando eu digitar o usuário "edusantos@evoluindo.com.br"
        E a senha "senha@123"
        Então deve ser direcionado para a tela de checkout

    Cenário: Usuário ou senha inválido
        Quando eu digitar o usuário "edusantos.com.br"
        E a senha "xpo123"
        Então deve exibir a mensagem "Usuário ou senha inválidos"
