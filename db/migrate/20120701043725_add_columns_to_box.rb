class AddColumnsToBox < ActiveRecord::Migration
  def change
    add_column :boxes, :diputado_local_pan, :integer
    add_column :boxes, :diputado_local_pri, :integer
    add_column :boxes, :diputado_local_prd, :integer
    add_column :boxes, :diputado_local_pt, :integer
    add_column :boxes, :diputado_local_pvem, :integer
    add_column :boxes, :diputado_local_movimiento, :integer
    add_column :boxes, :diputado_local_nueva_alianza, :integer
    add_column :boxes, :diputado_local_coalicion_uno, :integer
    add_column :boxes, :diputado_local_votos_nulos, :integer
    add_column :boxes, :alcalde_pan, :integer
    add_column :boxes, :alcalde_pri, :integer
    add_column :boxes, :alcalde_prd, :integer
    add_column :boxes, :alcalde_pt, :integer
    add_column :boxes, :alcalde_pvem, :string
    add_column :boxes, :alcalde_movimiento, :integer
    add_column :boxes, :alcalde_nueva_alianza, :integer
    add_column :boxes, :alcalde_coalicion_uno, :integer
    add_column :boxes, :alcalde_coalicion_dos, :integer
    add_column :boxes, :alcalde_votos_nulos, :integer
  end
end
