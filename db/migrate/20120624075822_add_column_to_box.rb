class AddColumnToBox < ActiveRecord::Migration
  def change
    add_column :boxes, :distrito, :string
  end
end
