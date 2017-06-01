# README

## Projeto Padrão Rails

Projeto padrão com todos os pacotes/bibliotecas/configurações utilizados nos projetos Rails da STI-UFF

### Contribuíndo

Para alterar o projeto padrão, por favor, atualize o changelog seguindo o padrão lá estabelecido

### Coisas que já vem no pacote:

* Projeto Rails (v 5.1.1)

* Testes pré-configurados ([rspec](https://github.com/rspec/rspec-rails),
[vcr](https://github.com/vcr/vcr/),
[shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers),
[capybara](https://github.com/jnicklas/capybara),
[database_cleaner](https://github.com/DatabaseCleaner/database_cleaner))

* iduff-sso (v 0.0.6) - já com login (autenticação via portal, levando a uma página home vazia)

* newrelic_rpm pré-configurado (v 3.18.1.330)

* syslog-logger pré-configurado (v 1.4.1)

* [letter_opener](https://github.com/ryanb/letter_opener) configurado para abrir emails em desenvolvimento (veja development.rb)

* Databases pre-configurados

* Ambientes de homologação e produção pré-configurados com envio de email em caso de erro

* HealthCheckController com 'teste_monitoramento' e 'teste_email'
Acesse /teste-monitoramento para verificar se o sistema está no ar e com acesso ao banco
Acesse /teste-email para verificar se o sistema está enviando email em casos de erro (produção/homolog)

* Diversas gems para agilizar o desenvolvimento (verificar gemfile, ler o readme delas no github)

Coisas que você precisa fazer ao utilizar esse projeto padrão:

* Configurar o database (Escolher o banco - mysql, sqlite, pg, oracle, etc...)

** Escolher no gemfile se decide usar mysql2, sqlite, etc.
** Escolher um dos database.yml.<banco>.example, renomear para database.yml e apagar os outros.
** Caso utilize outro banco (pg, oracle), por favor:
** coloque a gem comentada no gemfile e deixe um .example com a configuração e suba a atualização

* Configurar o nome do projeto: em (config/application.rb, trocar MyAppName pelo nome desejado. exemplo: module SisWow)

* Configurar o logger

** Em homologacao.rb: Trocar em config.logger = SyslogLogger.new 'app_name_h' para '<nome_do_app>_h'

** Em production.rb: Trocar em config.logger = SyslogLogger.new 'app_name_p' para '<nome_do_app>_p'

* Configurar o newrelic

** Em newrelic.yml, substituir os app_name. setar o nome normal e o nome em Staging(homologação)

O que está por vir:

* Layout padrão novo?

Ultima revisão: 01/06/2017

POR FAVOR: Alterar esse readme SEMPRE que modificar esse projeto.
De nada valerá esse projeto se ele não estiver bem documentado.