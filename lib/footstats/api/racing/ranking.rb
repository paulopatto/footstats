require 'footstats/resource'

class Footstats::Api::Racing::Ranking < Footstats::Resource
  field :position, :Posicao
  field :id, :Id
  field :name, :Nome
  field :points, :Pontos
  field :best_lap, :MelhorVolta
  field :team, :Escuderia
  field :acronym, :Sigla
  field :type, :Tipo
  field :victories, :Vitorias
end
