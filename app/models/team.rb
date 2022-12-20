class Team < ApplicationRecord
    has_many :match_teams, dependent: :destroy
end
