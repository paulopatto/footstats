require './lib/footstats/resource'

class Footstats::Racing::Narration < Footstats::Resource
  field :id, :Id
  field :status, :status
  field :current_lap, :VoltaAtual
  field :datetime, :DataHora
  field :comment, :Comentario
end
