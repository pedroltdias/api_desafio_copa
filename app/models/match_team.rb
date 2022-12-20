class MatchTeam < ApplicationRecord
  belongs_to :team, dependent: :destroy
  belongs_to :match, dependent: :destroy
end
