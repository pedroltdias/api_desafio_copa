FactoryBot.define do
  factory :match do
    date { "2022-12-19" }
    stadium { "Mane Garrincha" }
    home_team { association :team }
    away_team { association :team }
  end
end
