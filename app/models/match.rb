class Match < ApplicationRecord
    has_many :match_teams, dependent: :destroy
end
