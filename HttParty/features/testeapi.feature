# language: pt

Funcionalidade: Chamadas para API

  Cenário: Verificar chamadas para um site

    Dado que eu defina uma url "www.site.com" e um email "ana@gmail.com" para o site
      Quando realizar um POST
      Então é retornado com sucesso o site criado
      Quando eu informar uma nova url "www.site2.com"
        E realizar um UPDATE apenas da url
      Então é retornado com sucesso a nova url atualizada
      Quando eu informar um novo email "ana2@gmail.com"
        E realizar um UPDATE apenas do email
      Então é retornado com sucesso o novo email atualizado


