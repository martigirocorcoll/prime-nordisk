class AddLocationToInvestment < ActiveRecord::Migration[6.1]
  def change
    add_column :investments, :google_location, :string
  end
end
