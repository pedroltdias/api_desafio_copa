require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'check name' do 
    it 'when the name is ok' do
      player = Player.new(name:"Aluno", nationality: "Brazilian", age: 20)
      expect(player).to be_valid
    end

    it 'when the player does not have a name' do
      player = Player.new(name:nil, nationality: "Brazilian", age:20)
      expect(player).to_not be_valid
    end

    it 'when the name has less than 3 characters' do
      player = Player.new(name:"oi", nationality: "Brazilian", age:20)
      expect(player).to_not be_valid
    end
  end
end
