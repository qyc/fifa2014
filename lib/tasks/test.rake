namespace :test do
  desc "Create Random Bets"
  task create_bets: :environment do
    Bet.destroy_all
    Match.first(15).each do |match|
      Player.all.each do |player|
        bet = Bet.new
        bet.match_id = match.id
        bet.player_id = player.id
        bet.winner = rand(0..2)
        bet.total_score = rand(0..5)
        bet.save
      end
    end
  end

end
