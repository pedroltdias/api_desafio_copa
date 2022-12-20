class Team < ApplicationRecord
    has_many :players
    has_many :home_team, class_name: "Match", foreign_key: "home_team_id"
    has_many :away_team, class_name: "Match", foreign_key: "away_team_id"

    validates :name, presence: :true
    validates_length_of :name, minimum: 3
end
