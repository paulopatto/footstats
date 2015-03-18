class Footstats::Api::F1::Team
  def self.all
    request('/Escuderias/ListaEscuderias')
  end
end
