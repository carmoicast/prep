class AddColumnToBunker < ActiveRecord::Migration
  def change
    add_column :bunkers, :telefono, :string
  end
end
