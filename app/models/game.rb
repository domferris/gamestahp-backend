class Game < ApplicationRecord
  has_many :high_scores, dependent: :destroy

  validates :title, presence: true
end
