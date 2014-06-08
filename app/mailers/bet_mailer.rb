class BetMailer < ActionMailer::Base
  
  default from: "FIFA2014 <fifa2014.labcentrix@gmail.com>"
  
  def bet_email(bet_set)
    @bet_set = bet_set
    subject = "FIFA World Cup 2014: #{bet_set.date} / #{bet_set.player.name}"
    mail(to: bet_set.player.email, subject: subject)
  end
  
  def result_email(bet_sets)
    match_ids = bet_sets.first.matches.split("|").collect {|s| s.to_i }
    @date = bet_sets.first.date
    @players = Player.all
    @matches = Match.where(id: match_ids)
    @results = Hash.new
    bets = Bet.where(match_id: match_ids)
    bets.each do |bet|
      @results[bet.player_id.to_s] ||= Hash.new
      case bet.winner
        when 0
          result = "TIE"
        when 1
          result = bet.match.team_a.name
        when 2
          result = bet.match.team_b.name
        else
          result = "INVALID"
      end
      @results[bet.player_id.to_s][bet.match_id.to_s] = result
    end
    subject = "Results: #{@date}"
    mail(to: Player.pluck(:email), subject: subject)
  end
  
end
