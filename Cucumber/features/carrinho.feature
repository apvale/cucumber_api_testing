#language: pt

Funcionalidade: Gerenciar Carrinho
  Sendo usuário comum da loja
  Posso fazer busca de produtos e adicioná-los ao meu carrinho

  Cenário: Validar Inclusão do Produto no Carrinho de usuário

    Dado que eu esteja no site "http://walmart.com.br"
        Quando eu filtrar por "tv"
            E clicar no botão de buscar
        Então verei os resultados da busca para "tv"
        Quando eu clicar em um dos resultados
        Então verei a página do produto
        Quando eu estiver na página do produto
            E clicar para adicionar ao carrinho
            E clicar para visualizar o carrinho
        Então verei o produto no carrinho adicionado com sucesso
        Quando eu abrir a página de login
            E preencher os campos login "login" e senha "senha"
        Então verei o ícone de usuário logado com sucesso
