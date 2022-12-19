require 'rails_helper'

RSpec.describe Match, type: :model do
  context "check stadium" do
    it "when has date" do
      match = Match.new(date: "2022-12-18", time: nil, stadium: "Mané Garrincha", teams: [1, 2])
      expect(match).to be_valid
    end
  end
end
