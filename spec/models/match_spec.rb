require 'rails_helper'

RSpec.describe Match, type: :model do
  context 'check date' do
    it 'when the date is ok' do
      expect(build(:match)).to be_valid
    end
    it 'when the date is not ok' do
      expect(build(:match, date: nil)).to_not be_valid
    end
  end
  context 'check stadium' do
    it 'when there is a stadium' do
      expect(build(:match)).to be_valid
    end
    it 'when there is not a stadium' do
      expect(build(:match, stadium: nil)).to be_valid
    end
  end
  context 'check teams' do
    it 'when the match teams is ok' do
      expect(build(:match)).to be_valid
    end
    it 'when the match teams is not ok' do
      expect(build(:match, home_team_id: 1, away_team_id: 1)).to_not be_valid
    end
  end
end
