class AddDescriptionToInvestment < ActiveRecord::Migration[6.1]
  def change
    add_column :investments, :description, :string
    add_column :investments, :poblacion, :string
  end
end
