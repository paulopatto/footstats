module Footstats
  module Api
    module F1
      class Driver < Base
        # Listas informações sobre todos os atuais pilotos da F1.
        # Latência de chamada: 1 Hora
        def self.all
          request('/Piloto/ListaPilotos')
        end
      end
    end
  end
end
