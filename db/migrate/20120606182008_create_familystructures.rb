class CreateFamilystructures < ActiveRecord::Migration
  def change
    create_table :familystructures do |t|
      t.string :paterno
      t.string :materno
      t.string :nombre
      t.string :parentesco
      t.integer :edad
      t.integer :id_general

      t.timestamps
    end
  end
end
