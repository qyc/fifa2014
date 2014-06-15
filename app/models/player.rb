class Player < ActiveRecord::Base
  
  attr_accessible :name, :email, :total_penalty_kicks, :total_characters
  
  has_many :bets
    
end
