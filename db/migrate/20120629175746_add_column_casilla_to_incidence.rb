class AddColumnCasillaToIncidence < ActiveRecord::Migration
  def change
    add_column :incidences, :casilla, :string
  end
end
