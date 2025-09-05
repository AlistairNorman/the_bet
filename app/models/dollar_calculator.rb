class DollarCalculator
  D_ADJUSTMENTS = {
    GOAL: 7.75,
    FIRST: 2.82,
    SECOND: 0.91
  }
  LW_ADJUSTMENTS = {
    GOAL: 2.73,
    FIRST: 2.11,
    SECOND: 1.09
  }
  RW_ADJUSTMENTS = {
    GOAL: 2.68,
    FIRST: 2.10,
    SECOND: 1.06
  }
  C_ADJUSTMENTS = {
    GOAL: 3,
    FIRST: 2,
    SECOND: 1
  }

  def self.compute(outcome, player)
    total = 0

    adjustments = DollarCalculator.const_get("#{outcome.public_send("#{player}_position")}_ADJUSTMENTS")

    other_player = player == "jardo" ? "angry" : "jardo"
    other_player_points = outcome.public_send("#{other_player}_goals") + outcome.public_send("#{other_player}_firsts") + outcome.public_send("#{other_player}_seconds")

    adjustments.each do |point_type, value|
      total += value * (outcome.public_send("#{player}_#{point_type.to_s.downcase}s") ** 1.5)
    end

    total += outcome.public_send("#{player}_ppp")
    total += outcome.public_send("#{player}_shp") * 3

    if other_player_points.zero?
      total *= 1.3
    elsif other_player_points.odd?
      total *= 1.1
    end

    total *= 1.3 if outcome.win?

    total.round(2)
  end
end
