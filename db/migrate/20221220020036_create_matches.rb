class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.string :stadium
      t.references :home_team, null: false, foreign_key: { to_table: :teams }, index: true
      t.references :away_team, null: false, foreign_key: { to_table: :teams }, index: true

      t.timestamps
    end
  end
end
