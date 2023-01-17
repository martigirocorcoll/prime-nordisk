class CreateParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :participations do |t|
      t.decimal :quantitat_invertida
      t.date :data
      t.references :user, null: false, foreign_key: true
      t.references :investment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
