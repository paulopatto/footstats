class Footstats::Api::Soccer::Championship < Footstats::Api::Soccer::Base
  def self.all
    request('/Campeonato/ListarCampeonatos')
  end

  def self.ranking(championship_id)
    request('/Campeonato/RankingEquipes', { idCampeonato: championship_id })
  end

  def self.calendar(championship_id)
    request('/Campeonato/PartidasCampeonato', { idCampeonato: championship_id })
  end

  def self.top_scorers(championship_id)
    request('/Campeonato/Artilharia', { idCampeonato: championship_id })
  end

  def self.round_ranking(championship_id, id_round)
    request('/Campeonato/ClassificacaoRodada', { idCampeonato: championship_id, Rodada: id_round })
  end

  def self.referees_stats(championship_id)
    request('/Arbitro/Ranking', { idCampeonato: championship_id })
  end

  def self.players_stats(championship_id)
    request('/Campeonato/EstatisticasJogadores', { idCampeonato: championship_id })
  end

  def self.team_stats(championship_id)
    request('/Campeonato/EstatisticasEquipes', { idCampeonato: championship_id })
  end

  def self.teams(championship_id)
    request('/Equipe/EquipesCampeonato', { idCampeonato: championship_id })
  end
end
