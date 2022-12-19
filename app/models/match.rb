class Match < ApplicationRecord
  has_many :match_team
  has_many :teams, through: :match_team
end
