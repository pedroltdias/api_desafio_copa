FactoryBot.define do
  factory :player do
    name { "NomeJogador" }
    position { "Posicao" }
    age { 20 }
    team { association :team }
  end
end
