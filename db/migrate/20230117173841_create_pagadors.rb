class CreatePagadors < ActiveRecord::Migration[6.1]
  def change
    create_table :pagadors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
