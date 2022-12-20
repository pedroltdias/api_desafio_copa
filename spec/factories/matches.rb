FactoryBot.define do
  factory :match do
    date { "2022-12-19" }
    stadium { "MyString" }
    home_team { nil }
    away_team { nil }
  end
end
