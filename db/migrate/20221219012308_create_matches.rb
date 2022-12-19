class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.time :time
      t.string :stadium

      t.timestamps
    end
  end
end
