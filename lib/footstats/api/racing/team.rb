require 'footstats/resource'

class Footstats::Api::Racing::Team < Footstats::Resource
  field :id,       :Id
  field :name,     :Nome
  field :nickname, :Apelido
  # field :site,     :Site
  field :nationality, :Nacionalidade
  field :country_acronym,  :SiglaPais
end
