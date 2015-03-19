class Footstats::Api::Soccer::Championship < Footstats::Api::Soccer::Base
  def self.all
    teams = []
    Footstats::Api::Soccer::Championship.all.each do |championship|
      teams += Footstats::Api::Soccer::Championship.teams( championship['id'] )
    end

    return teams
  end

  def self.players(id_team)
    request('/Jogador/JogadoresEquipe', { idEquipe: id_team })
  end
end
