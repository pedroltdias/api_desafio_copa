class AddNameToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :name, :string
  end
end
