class Player < ActiveRecord::Base
  
  attr_accessible :name, :email, :total_penalty_kicks, :total_characters
  
  has_many :bets
  
  def result
    result = {
      matches: 0,
      scores: 0,
      characters: self.total_characters,
      penalties: self.total_penalty_kicks
    }
    self.bets.each do |bet|
      result[:matches] += bet.match.point if bet.winner.eql? bet.match.result
      result[:scores] += bet.match.point if bet.total_score.eql? bet.match.total_score
    end
    result
  end
    
end
