class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.references :match, index: true
      t.references :player, index: true
      t.integer :winner
      t.integer :total_score
      t.timestamps
    end
  end
end
