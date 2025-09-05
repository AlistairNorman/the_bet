class Game < ApplicationRecord
  validates :opponent, :date, presence: true

  belongs_to :outcome, optional: true, inverse_of: :game
end
