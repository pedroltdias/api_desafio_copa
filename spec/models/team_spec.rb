require 'rails_helper'

RSpec.describe Team, type: :model do
  context 'check name' do
    it 'when the name is ok' do
      expect(build(:team)).to be_valid
    end
    it 'when the name is not ok' do
      expect(build(:team, name: nil)).to_not be_valid
    end
    it 'when the name has less than 3 characters' do
      expect(build(:team, name: "oi")).to_not be_valid
    end
  end
end
