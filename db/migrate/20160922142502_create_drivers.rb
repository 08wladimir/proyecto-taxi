class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.references :usuario, foreign_key: true
      t.string :name
      t.string :license
      t.string :rut
      t.integer :identityCard
      t.string :peaceCertificate

      t.timestamps
    end
  end
end
