class Footstats::Api::F1::Championship < Footstats::Api::F1::Base
  def self.ranking
    request('/Campeonato/Classificacao')
  end

  def self.calendar
    request('/GP/Calendario')
  end
end
