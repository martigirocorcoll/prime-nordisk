class CreatePagos < ActiveRecord::Migration[6.1]
  def change
    create_table :pagos do |t|
      t.decimal :quantitat
      t.date :fecha
      t.references :pagador, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
