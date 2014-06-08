class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.integer :total_length
      t.timestamps
    end
  end
end
