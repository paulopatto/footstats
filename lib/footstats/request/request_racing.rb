require './lib/footstats/request/base'
require './lib/footstats/racing/driver.rb'
require './lib/footstats/racing/team.rb'

module Footstats
  module Request
    class RequestRacing < Base
      API = "http://apicorrida.footstats.com.br/api"

      def self.drivers
        request("Piloto/ListaPilotos").map do |driver|
          Footstats::Racing::Driver.new(driver)
          end
      end

      def self.teams
        request("Escuderia/ListaEscuderias").map { |team| Footstats::Racing::Team.new(team) }
      end

      def self.gps
        request("GP/Calendario").map { |gp| Footstats::Racing::GP.new(gp) }
      end

      # Retorna uma lista com os comentários sobre o GP.
      # :offset (MaxId) é o Id do comentário, quando um valor é passado ele
      # só retorna os comentários posteriores.
      # Quando o valor passado for 0 ele retorna todos os comentários do GP.
      #
      # Latência de chamada:
      # --------------------
      # 1 Minuto enquanto o status do GP for:
      #
      # - Treino Livre 1
      # - Treino Livre 2
      # - Treino Livre 3
      # - Q1
      # - Q2
      # - Q3
      # - Corrida
      def self.narration(gp_id, offset = 0)
        request("GP/Narracao", {idGP: gp_id, MaxId: offset}).map do |narration|
          Footstats::Racing::Narration.new(narration)
        end
      end

      # Lista as classificações dos
      # - Treinos Livres
      # - Qualify
      # - Corrida
      #
      # Latência de chamada:
      # --------------------
      # 1 Minuto enquanto o status do GP for
      #
      # - Treino Livre 1
      # - Treino Livre 2
      # - Treino Livre 3
      # - Q1
      # - Q2
      # - Q3
      # - Corrida
      def self.rankings(gp_id)
        request("GP/ClassificacaoGP").map do |fase|
          binding.pry
        end
      end

      protected
      def self.request(method, params = {})
        super(method, API, params)
      end
    end
  end
end
