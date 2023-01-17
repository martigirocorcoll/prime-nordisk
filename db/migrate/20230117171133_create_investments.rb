class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.string :direccion
      t.decimal :precio_venta
      t.decimal :precio_adquisicion
      t.decimal :gastos
      t.string :estado

      t.timestamps
    end
  end
end
