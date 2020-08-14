class Game < ApplicationRecord
  has_many :scores

  validates :title, presence: true
end
