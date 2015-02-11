require './lib/footstats/resource'

class Footstats::Api::Racing::Narration < Footstats::Resource
  field :id, :Id
  field :status, :status
  field :current_lap, :VoltaAtual
  field :datetime, :DataHora
  field :comment, :Comentario
end
