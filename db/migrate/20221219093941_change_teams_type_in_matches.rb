class ChangeTeamsTypeInMatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :teams, :integer
    add_column :matches, :teams, :integer, references: :teams
  end
end
