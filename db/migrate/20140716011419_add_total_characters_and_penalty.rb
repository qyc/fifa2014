class AddTotalCharactersAndPenalty < ActiveRecord::Migration
  def change
    bets = {
      Juan: { P: 11, C: 444 },
      Xiaoyuan: { P: 28, C: 512 },
      Andy: { P: 14, C: 392 },
      Mike: { P: 17, C: 358 },
      Jessica: { P:  19, C: 356 },
      Yalun: { P:  13, C: 392 },
      Yucheng: { P:  16, C: 360 },
      Lia: { P:  24, C: 333 },
      Mayura: { P:  17, C: 390 },
      Trung: { P:  20, C: 350 }
    }
    Player.all.each do |player|
      if player.name.to_sym.in? bets
        player.total_penalty_kicks = bets[player.name.to_sym][:P]
        player.total_characters = bets[player.name.to_sym][:C]
        player.save!
      end
    end
  end
end
