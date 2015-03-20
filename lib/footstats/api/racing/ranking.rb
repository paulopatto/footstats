require 'footstats/resource'

class Footstats::Api::Racing::Ranking < Footstats::Resource
  field :position, :Posicao
  field :id, :Id
  field :drive_id, :IdPiloto
  field :name, :Nome
  field :points, :Pontos
  field :best_lap, :MelhorVolta
  field :team, :Escuderia
  field :acronym, :Sigla
  field :type, :Tipo
  field :victories, :Vitorias
  field :pitstop, :PitStop
  field :team, :Escuderia
end
