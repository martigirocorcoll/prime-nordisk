class CreateCobros < ActiveRecord::Migration[6.1]
  def change
    create_table :cobros do |t|
      t.decimal :quantitat
      t.date :fecha
      t.references :comprador, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
