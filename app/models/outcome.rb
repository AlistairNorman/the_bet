class Outcome < ApplicationRecord
  validates :jardo_goals, :jardo_firsts, :jardo_seconds, :jardo_ppp, :jardo_shp, :angry_goals, :angry_firsts, :angry_seconds, :angry_ppp, :angry_shp, presence: true
  has_one :game, dependent: :nullify, inverse_of: :outcome

  VALID_POSITIONS = %w[C LW RW D].freeze

  validates :jardo_position, inclusion: { in: VALID_POSITIONS, message: "%{value} is not a valid position" }
  validates :angry_position, inclusion: { in: VALID_POSITIONS, message: "%{value} is not a valid position" }
end
