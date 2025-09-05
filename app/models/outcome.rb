class Outcome < ApplicationRecord
  validates :jardo_goals, :jardo_firsts, :jardo_seconds, :jardo_ppp, :jardo_shp, :angry_goals, :angry_firsts, :angry_seconds, :angry_ppp, :angry_shp, :win, presence: true
  has_one :game, dependent: :nullify, inverse_of: :outcome
end
