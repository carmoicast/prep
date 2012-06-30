class ChanceTypeStatusIncidence < ActiveRecord::Migration

  def self.up
      change_table :incidences do |t|
        t.change :status, :string
      end
    end

    def self.down
      change_table :widgets do |t|
        t.change :status, :integer
      end
    end
    
    
end
