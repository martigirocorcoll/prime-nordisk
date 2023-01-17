class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :nom_comercial
      t.string :pesona_contacte
      t.string :telefon
      t.string :mail

      t.timestamps
    end
  end
end
