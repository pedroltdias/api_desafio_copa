class Team < ApplicationRecord
    attribute :players, null: true
    has_many :players
end
