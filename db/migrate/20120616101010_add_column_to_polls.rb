class AddColumnToPolls < ActiveRecord::Migration
  def change
    add_column :polls, :tipo_tres, :integer
  end
end
