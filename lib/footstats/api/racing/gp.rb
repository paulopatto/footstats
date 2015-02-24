require 'footstats/resource'
module Footstats
  module Api
    module Racing
      class GP < Footstats::Resource
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
    end
  end
end



Actual fields:

field :id
field :championship_id
field :name
field :nickname
field :locality
field :date
field :total_laps
field :status
field :current_lap
field :active
field :city
field :country
