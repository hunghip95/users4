class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products,:num,:integer
  end
end
