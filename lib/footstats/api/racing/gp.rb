require 'footstats/resource'
module Footstats
  module Api
    module Racing
      class GP < Footstats::Resource
        field :id, :Id
        field :name, :AutodromoNome
        field :nickname, :AutodromoApelido
        # field :distance, :DisatnciaPista
        field :locality, :Local
        field :date, :DataHoraBrasil
        # field :local_date, :DataHoraLocal
        field :total_laps, :QtdVoltas
        field :status, :Status
        field :current_lap, :VoltaAtual
        field :active, :Ativo
        field :city, :Cidade
        field :country, :Pais
      end
    end
  end
end
