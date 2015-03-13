require 'footstats/request/base'
require 'footstats/api/racing/gp.rb'
require 'footstats/api/racing/narration.rb'
require 'footstats/api/racing/ranking.rb'
require 'footstats/api/racing/team.rb'
require 'footstats/api/racing/driver.rb'
require 'footstats/api/racing'

module Footstats
  module Request
    class RequestRacing < Base
      API = ENV['FOOTSTATS_ENDPOINT'] || "http://apicorrida.footstats.com.br/api"

      def self.drivers
        request("Piloto/ListaPilotos").map { |driver| Footstats::Api::Racing::Driver.new(driver) }
      end

      def self.teams
        request("Escuderia/ListaEscuderias").map { |team| Footstats::Api::Racing::Team.new(team) }
      end

      def self.gps
        request("GP/Calendario").map { |gp| Footstats::Api::Racing::GP.new(gp) }
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
          Footstats::Api::Racing::Narration.new(narration)
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
        request("GP/ClassificacaoGP", {idGP: gp_id}).map do |fase|
          fase[1].collect do |ranking_item|
            ranking_item.merge!("Tipo" => fase[0])

            Footstats::Api::Racing::Ranking.new(ranking_item)
          end
        end
      end

      def self.championship_ranking()
        request("Campeonato/Classificacao").map do |championship|
          championship[1].collect do |ranking_item|
            ranking_item.merge!("Tipo" => championship[0])

            Footstats::Api::Racing::Ranking.new(ranking_item)
          end
        end
      end
      protected
      def self.request(method, params = {})
        super(method, API, params)
      end
    end
  end
end
