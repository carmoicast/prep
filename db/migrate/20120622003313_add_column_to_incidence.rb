class AddColumnToIncidence < ActiveRecord::Migration
  def change
    add_column :incidences, :incidencia, :string
  end
end
