class HighScore < ApplicationRecord
belongs_to :game

validates :score, :player, :game, presence: true
end
