class Footstats::Api::F1::Team < Footstats::Api::F1::Base
  def self.all
    request('/Escuderia/ListaEscuderias')
  end
end
