FactoryBot.define do
  factory :game, class: "Game" do
    opponent { "Narwhalers" }
    date { Date.today }
  end
end
