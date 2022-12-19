class Player < ApplicationRecord
    validates :name, presence: :true
    validates_length_of :name, minimum: 3
end
