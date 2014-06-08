class Bet < ActiveRecord::Base
  
  attr_accessible :match_id, :player_id, :winner, :total_score
  
  belongs_to :match
  belongs_to :player
  
end
