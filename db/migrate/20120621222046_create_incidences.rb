class CreateIncidences < ActiveRecord::Migration
  def change
    create_table :incidences do |t|
      t.datetime :hora
      t.integer :tipo_incidente_apertura
      t.integer :tipo_incidente_proceso
      t.integer :tipo_incidente_cierre
      t.string :tipo_incidente_otro
      t.integer :box_id

      t.timestamps
    end
    add_index :incidences, :box_id
  end
end
