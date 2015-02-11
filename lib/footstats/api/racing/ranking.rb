require './lib/footstats/resource'

class Footstats::Api::Racing::Ranking < Footstats::Resource
  field :position, :Posicao
  field :driver_id, :IdPiloto
  field :driver_name, :NomePiloto
  field :best_lap, :MelhorVolta
  field :team, :Escuderia
  field :acronym, :Sigla
  field :type, :Tipo
end
