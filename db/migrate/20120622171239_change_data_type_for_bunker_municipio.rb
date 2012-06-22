class ChangeDataTypeForBunkerMunicipio < ActiveRecord::Migration

  def self.up
     change_table :bunkers do |t|
       t.change :municipio, :string 
     end
   end

   def self.down
     change_table :bunkers do |t|
       t.change :municipio, :integer
     end
   end
   
   
end
