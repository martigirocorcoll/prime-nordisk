class CreateCompradors < ActiveRecord::Migration[6.1]
  def change
    create_table :compradors do |t|
      t.string :nombre
      t.string :contacto
      t.string :mail

      t.timestamps
    end
  end
end
