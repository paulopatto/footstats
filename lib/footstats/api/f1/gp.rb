module Footstats
  module Api
    module F1
      class GP < Footstats::Api::F1::Base
        def self.narration(id_gp, max_id = 0)
          request('/GP/Narracao', { idGP: id_gp, MaxId: max_id})
        end

        def self.ranking(id_gp)
          request('/GP/ClassificacaoGP', { idGP: id_gp })
        end
      end
    end
  end
end
