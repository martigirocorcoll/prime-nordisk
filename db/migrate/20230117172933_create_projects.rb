class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :nombre
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
