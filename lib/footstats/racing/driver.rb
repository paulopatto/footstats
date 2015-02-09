require './lib/footstats/resource'
module Footstats
  module Racing
    class Driver < Footstats::Resource
      field :id,                    :Id
      field :name,                  :Nome
      field :brith,                 :Nascimento
      field :points,                :PontosConquistados
      field :podiums,               :Podios
      field :first_gp,              :PrimeiroGP
      field :nickname,              :Apelido
      field :brith_place,           :PaisOrigem
      field :nationality,           :Nacionalidade
      field :fastest_laps,          :VoltasRapidas
      field :word_championships,    :Titulos
      field :highest_grid_position, :Vitorias
      field :highest_race_position, :PolesPositions
    end
  end
end
