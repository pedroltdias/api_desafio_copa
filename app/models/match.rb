class Match < ApplicationRecord
    attribute :time, null: true
    serialize :teams, Array
    validates :teams, length: {is: 2, message: "one match must have exactly two teams"}
end
