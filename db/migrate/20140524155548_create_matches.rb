class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date_time
      t.string :location
      t.references :team_a, index: true
      t.references :team_b, index: true
      t.boolean :allow_tie
      t.integer :result
      t.integer :total_score
      t.integer :penalty_kicks
      t.integer :point
      t.string :stage
      t.timestamps
    end
  end
end
