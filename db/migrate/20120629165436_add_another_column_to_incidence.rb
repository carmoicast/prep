class AddAnotherColumnToIncidence < ActiveRecord::Migration
  def change
    add_column :incidences, :user_id, :integer
  end
     
end
