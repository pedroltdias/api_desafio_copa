class CreateMatchTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :match_teams do |t|
      t.belongs_to :team, null: false, foreign_key: true
      t.belongs_to :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
