class DollarCalculator
  D_ADJUSTMENTS = {
    GOAL: 2.58,
    FIRST: 1.41,
    SECOND: 0.91
  }
  LW_ADJUSTMENTS = {
    GOAL: 0.91,
    FIRST: 1.06,
    SECOND: 1.09
  }
  RW_ADJUSTMENTS = {
    GOAL: 0.89,
    FIRST: 1.05,
    SECOND: 1.06
  }
  C_ADJUSTMENTS = {
    GOAL: 1,
    FIRST: 1,
    SECOND: 1
  }

  def self.compute(outcome, player)
    adjustments = DollarCalculator.const_get("#{outcome.public_send("#{player}_position")}_ADJUSTMENTS")

    total = 0
    money_range = 100..400

    adjustments.each do |point_type, value|
      outcome.public_send("#{player}_#{point_type.to_s.downcase}s").times do |i|
        total += value * (money_range.to_a.sample / 100.0)

        money_range = (money_range.first - 50)..(money_range.last + 50)
      end
    end

    total
  end
end
