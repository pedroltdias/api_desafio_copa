require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'check name' do
    it 'when the name is ok' do
      expect(build(:player)).to be_valid
    end
    it 'when the name is not ok' do
      expect(build(:player, name: nil)).to_not be_valid
    end
    it 'when the name has less than 3 characters' do
      expect(build(:player, name: "oi")).to_not be_valid
    end
  end
  context 'check age' do
    it 'when the age is ok' do
      expect(build(:player)).to be_valid
    end
    it 'when the age is lower than expected' do
      expect(build(:player, age: 14)).to_not be_valid
    end
    it 'when the age is higher than expected' do
      expect(build(:player, age: 44)).to_not be_valid
    end
  end
  context 'check position' do
    it 'when the position is ok' do
      expect(build(:player)).to be_valid
    end
    it 'when the position is not ok' do
      expect(build(:player, position: nil)).to_not be_valid
    end
    it 'when the position has less than 3 characters' do
      expect(build(:player, position: "oi")).to_not be_valid
    end
  end
end