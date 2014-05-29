class Match < ActiveRecord::Base
  
  attr_accessible :uuid, :location, :date_time, :team_a_id, :team_b_id, :allow_tie, :result, :penalty_kicks, :stage, :point
  
  STAGES = [
    "Group Stage",
    "Round of 16",
    "Quarterfinals",
    "Semi-Finals",
    "Third-Place Play-Off",
    "Final"
  ]
  
  WINNERS_FOR_SELECT = [
    [ 1, "Team A" ],
    [ 2, "Team B" ],
    [ 0, "TIE" ]
  ]
  
  def team_a
    Team.find(team_a_id)
  end
  
  def team_b
    Team.find(team_b_id)
  end
  
  def winner
    case result
      when 0
        "TIE"
      when 1
        team_a
      when 2
        team_b
      else
        nil
      end
  end
  
  def est_time
    date_time.in_time_zone("Eastern Time (US & Canada)") rescue nil
  end
  
end
