class ChangeDataTypeForCasillaString < ActiveRecord::Migration
  def up
    change_table :boxes do |t|
       t.change :casilla, :string
       t.change :hora_apertura, :datetime
       t.change :hora_cierre, :datetime
    end
  end

  def down
    change_table :boxes do |t|
      t.change :casilla, :integer
      t.change :hora_apertura, :date
      t.change :hora_cierre, :date
    end
  end
end
