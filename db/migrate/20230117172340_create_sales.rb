class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :descripcio
      t.decimal :quantitat
      t.date :fecha
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
