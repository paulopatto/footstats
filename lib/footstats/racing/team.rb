require './lib/footstats/resource'

class Footstats::Racing::Team < Footstats::Resource
  field :id,       :Id
  field :name,     :Nome
  field :nickname, :Apelido
  field :site,     :Site
  field :country,  :SiglaPais
end
