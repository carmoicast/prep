class CreateBunkers < ActiveRecord::Migration
  def change
    create_table :bunkers do |t|
      t.integer :municipio
      t.boolean :en_operacion
      t.boolean :en_ruta
      t.string :nombre
      t.string :casilla_uno
      t.string :casilla_dos
      t.string :casilla_tres
      t.string :casilla_cuatro
      t.string :casilla_cinco
      t.string :casilla_seis
      t.string :casilla_siete
      t.string :casilla_ocho
      t.string :casilla_nueve
      t.string :casilla_diez
      t.integer :box_id

      t.timestamps
    end
    add_index :bunkers, :box_id
  end
end
