module Footstats
  module Api
    module Soccer
      class Match < Footstats::Api::Soccer::Base
        def self.all_by_championship(championship_id)
          Footstats::Api::Soccer::Championship.calendar(championship_id)
        end

        def self.today
          request('/Partida/PartidasAtuais')
        end

        def self.now
          request('/Partida/PartidasAndamento')
        end

        def self.stats(match_id)
          request('/Partida/Estatisticas', { idPartida: match_id })
        end

        def self.collective_stats(match_id)
          request('/Partida/EstatisticasColetivas', { idPartida: match_id })
        end

        def self.narration(match_id, last_event_id = 0)
          request('/Partida/NarracaoMinMinMax', { idPartida: match_id, MaxId: last_event_id  })
        end

        def self.narration_minute(match_id)
          request('/Partida/NarracaoMinMinMax', { idPartida: match_id })
        end
      end
    end
  end
end
