# Footstats gem

> Atenção não recomendamos o uso desta gem ainda em produção.

[![Build Status](https://travis-ci.org/paulopatto/footstats.svg?branch=master)](https://travis-ci.org/paulopatto/footstats)
[![Code Climate](https://codeclimate.com/github/paulopatto/footstats/badges/gpa.svg)](https://codeclimate.com/github/paulopatto/footstats)
[![Coverage Status](https://coveralls.io/repos/paulopatto/footstats/badge.svg)](https://coveralls.io/r/paulopatto/footstats)

## Introdução

Esta gem tem como objetivo facilitar o acesso a api de dados da [Footstats](http://footstats.com.br), todos os dados são direitos da mesma.

## Instalação

### via Ruby gems em linha de comando

`$ gem install footstats`

### com bundler
Adicione a seguinte linha ao seu  Gemfile:

```ruby
gem 'footstats'
```

e  execute:

    $ bundle

## Mode de usar

```ruby
require 'footstats'
```

### Configurando

Para efetuar configurações globais use:

```ruby
Footstats.configure do |config|
  config.token = 'ABCD-1234'
  # Não recomendamos mudar os endpoints
  # config.endpoints[:f1] = 'my-mock-endpoint'
end
```

> Exemplo 1: Solictando o calendário do campeonato da atual temporada

```ruby
# Get Championship Calendar
Footstats::Api::F1::Championship.calendar
```

> Exemplo 2: retornando o ranking da temporada atual

```ruby
# Get Championship Ranking
Footstats::Api::F1::Championship.ranking
```

> Exemplo 3 : Listando todos os campeonatos disponíveis

```ruby
# Get Championships
Footstats::Api::Soccer::Championship.all
```

## Como contribuir

1. Fork o para sua conta ( https://github.com/[my-github-username]/footstats/fork )
2. Crie seu feature branch (`git checkout -b my-new-feature`)
3. Commit suas alterações (`git commit -am 'Add some feature'`)
4. Faça o Push do seu branch (`git push origin my-new-feature`)
5. Crie um novo Pull Request.


## FOOTSTATS
Footstats e dados de api são uma propriedade da *Footstats estatísticas especializada em futebol*
