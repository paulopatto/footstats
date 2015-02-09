require './lib/footstats/resource'

class Footstats::Racing::GP < Footstats::Resource
  field :id, :Id
  field :track_name, :AutodromoName
  field :track_nickname, :AutodromoApelido
  field :distance, :DisatnciaPista
  field :location, :Local
  field :brazilian_time, :DataHoraBrasil
  field :local_time, :DataHoraLocal
  field :laps, :QtdVoltas
  field :status, :Status
  field :atual_lap, :VoltaAtual
  field :active, :Ativo
  field :city, :Cidade
  field :country, :Pais
end
