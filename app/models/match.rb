class Match < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"

  validates :date, presence: :true
  
  validates :home_team, exclusion: { in: [:away_team] }
end
