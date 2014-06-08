class CreateBetSets < ActiveRecord::Migration
  def change
    create_table :bet_sets do |t|
      t.string :uuid
      t.index :uuid
      t.date :date
      t.references :player, index: true
      t.string :matches
      t.boolean :email_sent
      t.boolean :submitted
      t.timestamps
    end
  end
end
