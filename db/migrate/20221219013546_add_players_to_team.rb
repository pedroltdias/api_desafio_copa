class AddPlayersToTeam < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :players, :integer
  end
end
