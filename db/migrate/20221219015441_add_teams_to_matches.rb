class AddTeamsToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :teams, :integer
  end
end
