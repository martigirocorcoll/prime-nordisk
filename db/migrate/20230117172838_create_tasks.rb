class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :nom
      t.date :data_limit
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
