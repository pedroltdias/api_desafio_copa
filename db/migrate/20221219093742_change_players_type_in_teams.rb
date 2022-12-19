class ChangePlayersTypeInTeams < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :players, :integer
    add_column :teams, :players, :integer, references: :players
  end
end
