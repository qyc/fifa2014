class AddBetFieldsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :total_penalty_kicks, :integer
    add_column :players, :total_characters, :integer
  end
end
