class Player < ActiveRecord::Base
  
  attr_accessible :name, :email
  
  has_many :bets
    
end
