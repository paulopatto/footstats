require 'footstats/resource'

class Footstats::Api::Racing::Team < Footstats::Resource
  field :id,       :Id
  field :name,     :Nome
  field :nickname, :Apelido
  field :site,     :Site
  field :country,  :SiglaPais
end
