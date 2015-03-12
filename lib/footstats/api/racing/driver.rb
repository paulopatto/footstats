require 'footstats/resource'

module Footstats
  module Api
    module Racing
      class Driver < Footstats::Resource
        field :id,                    :Id
        field :name,                  :Nome
        # field :brith,                 :Nascimento
        # field :points,                :PontosConquistados
        # field :podiums,               :Podios
        # field :first_gp,              :PrimeiroGP
        field :nickname,              :Apelido
        field :acronym,               :SiglaNome
        field :country,           :PaisOrigem
        field :nationality,           :Nacionalidade
        field :country_acronym,       :SiglaPais
        # field :fastest_laps,          :VoltasRapidas
        # field :word_championships,    :Titulos
        # field :highest_grid_position, :Vitorias
        # field :highest_race_position, :PolesPositions
      end
    end
  end
end
