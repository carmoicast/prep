class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :casilla
      t.string :seccion
      t.date :hora_apertura
      t.date :hora_cierre
      t.string :direccion
      t.string :municipio
      t.integer :id_incidente
      t.string :rc_uno
      t.string :rc_dos
      t.string :rc_tres
      t.integer :pre_pan
      t.integer :pre_pri
      t.integer :pre_prd
      t.integer :pre_verde
      t.integer :pre_pt
      t.integer :pre_movimiento
      t.integer :pre_nueva_alinza
      t.integer :pre_coalicion_uno
      t.integer :pre_coalicion_dos
      t.integer :pre_coalicion_tres
      t.integer :pre_coalicion_cuatro
      t.integer :pre_coalicion_cinco
      t.integer :pre_candidatos_no_registrado
      t.integer :pre_votos_nulos
      t.integer :pre_total
      t.integer :gob_pan
      t.integer :gob_pri
      t.integer :gob_prd
      t.integer :gob_verde
      t.integer :gob_pt
      t.integer :gob_movimiento
      t.integer :gob_nueva_alianza
      t.integer :gob_coalicion_uno
      t.integer :gob_coalicion_dos
      t.integer :gob_coalicion_tres
      t.integer :gob_coalicion_cuatro
      t.integer :gob_coalicion_cinco
      t.integer :gob_candidatos_no_registrado
      t.integer :gob_votos_nulos
      t.integer :gob_total
      t.integer :diputado_federal_pan
      t.integer :diputado_federal_pri
      t.integer :diputado_federal_prd
      t.integer :diputado_federal_verde
      t.integer :diputado_federal_pt
      t.integer :diputado_federal_movimiento
      t.integer :diputado_federal_nueva_alianza
      t.integer :diputado_federal_coalicion_uno
      t.integer :diputado_federal_coalicion_dos
      t.integer :diputado_federal_coalicion_tres
      t.integer :diputado_federal_coalicion_cuatro
      t.integer :diputado_federal_coalicion_cinco
      t.integer :diputado_federal_no_registrado
      t.integer :diputado_federal_votos_nulos
      t.integer :diputado_federal_total

      t.timestamps
    end
  end
end
