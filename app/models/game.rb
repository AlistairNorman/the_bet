class Game < ApplicationRecord
  validates :opponent, :date, presence: true
end
