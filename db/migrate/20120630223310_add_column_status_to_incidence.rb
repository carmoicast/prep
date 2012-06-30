class AddColumnStatusToIncidence < ActiveRecord::Migration
  def change
    add_column :incidences, :status, :integer
  end
end
