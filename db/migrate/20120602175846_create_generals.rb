class CreateGenerals < ActiveRecord::Migration
  def change
    create_table :generals do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :telefono
      t.integer :tipotel
      t.string :email
      t.text :domicilio
      t.string :colonia
      t.integer :estudios
      t.integer :rolfamiliar
      t.string :profesion
      t.integer :id_estructura
      t.integer :id_campaign

      t.timestamps
    end
  end
end
