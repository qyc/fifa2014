class BetSet < ActiveRecord::Base
  attr_accessible :player_id, :matches, :date, :uuid, :submitted
  belongs_to :player
  
  def match_list
    if matches.nil?
      []
    else
      matches.split("|").collect {|s| Match.find(s.to_i)}
    end
  end
end
