require './lib/footstats/resource'

class Footstats::Racing::Championship < Footstats::Resource
  field :drivers, :Pilotos
  field :teams,   :Escuderias
end
