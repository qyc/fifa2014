class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.index :name
      t.string :flag, length: 1024
      t.timestamps
    end
  end
end
