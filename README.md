![](https://raw.githubusercontent.com/ifms-na/siai-ifms-na/master/app/assets/images/logo_ifms.png?token=ABT0W4aSOnogYpUeUhFZlcp1WgNYR34Gks5Yv3kuwA%3D%3D)

# SUAP API RUBY

![Em Desenvolvimento](http://messages.hellobits.com/success.svg?message=Em%20Desenvolvimento)

Um wrapper Ruby para acesso a [API](http://suap.ifms.edu.br/api/docs/) do [SUAP (Sistema Unificado de Administração Publica)](http://portal.ifrn.edu.br/tec-da-informacao/servicos-ti/menus/servicos/copy2_of_suap) do IFMS. Este pacote permite que você tenha acesso aos dados do SUAP na sua aplicação Ruby.

Atualmente fornece informações para:

 - Frequências do dia

## Instalação

Adicione a linha abaixo em seu Gemfile e execute o bundle install:

```ruby
gem 'suap_api'
```

ou

    gem install suap_api

## Como usar

### Frequências do dia

```ruby
# Return
# "{\"frequencias_hoje\":[{\"acao\":\"E\",\"horario\":\"2017-06-14T07:14:27\"},{\"acao\":\"S\",\"horario\":\"2017-06-14T11:31:33\"},{\"acao\":\"E\",\"horario\":\"2017-06-14T12:22:32\"}],\"total_tempo_semana\":\"15h 53min 34seg\",\"total_tempo_hoje\":\"07:01:49\"}"
#
connection = SuapApi::Connect.new('SUAPE_VALIDO', 'SENHA')
puts SuapApi::FrequencyOfDay.get(connection)
```

## Desenvolvimento (Como contribuir)

Para ajudar no Desenvolvimento, clone o repositório, instale as dependências e sempre rode os testes para garantir a consistência do sistema.

    $ git clone git@github.com:ifms-na/suap_api.git
    $ cd suap_api
    $ bundle install
    $ USER="usuario_siape" PASSWORD="suasenha_siape" rspec

## License

suap_api usa a Licença MIT. Para mais detalhes https://github.com/ifms-na/suap_api/blob/master/LICENSE.txt
