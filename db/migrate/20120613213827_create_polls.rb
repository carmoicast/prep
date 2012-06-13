class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :paterno
      t.string :materno
      t.string :nombre
      t.integer :telefono
      t.string :correo
      t.text :domicilio
      t.integer :estudio
      t.string :rol
      t.string :profesion
      t.string :nombre_uno
      t.integer :tipo_uno
      t.integer :edad_uno
      t.string :nombre_dos
      t.integer :tipo_dos
      t.integer :edad_dos
      t.string :nombre_tres
      t.integer :edad_tres
      t.integer :edad_tres
      t.string :nombre_cuatro
      t.integer :tipo_cuatro
      t.integer :edad_cuatro
      t.string :nombre_cinco
      t.integer :tipo_cinco
      t.integer :edad_cinco
      t.string :nombre_seis
      t.integer :tipo_seis
      t.integer :edad_seis
      t.string :nombre_siete
      t.integer :tipo_siete
      t.integer :edad_siete
      t.string :nombre_ocho
      t.integer :tipo_ocho
      t.integer :edad_ocho
      t.string :nombre_nueve
      t.string :tipo_nueve
      t.integer :edad_nueve
      t.string :nombre_diez
      t.integer :tipo_diez
      t.integer :edad_diez
      t.boolean :posicionamiento_a
      t.boolean :posicionamiento_b
      t.boolean :posicionamiento_c
      t.boolean :posicionamiento_d
      t.boolean :posicionamiento_e
      t.boolean :pregunta_a
      t.text :pregunta_observaciones

      t.timestamps
    end
  end
end
