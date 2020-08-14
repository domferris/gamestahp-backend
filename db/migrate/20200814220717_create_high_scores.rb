class CreateHighScores < ActiveRecord::Migration[6.0]
  def change
    create_table :high_scores do |t|
      t.integer :score, null: false
      t.string :player, null: false
      t.belongs_to :game, null: false
      t.timestamps
    end
  end
end
