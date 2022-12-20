class Player < ApplicationRecord
  belongs_to :team

  validates :name, :position, presence: :true
  validates_length_of :name, :position, minimum: 3

  validates :age, inclusion: {in: 16..40}
end
