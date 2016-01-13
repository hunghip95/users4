class AddMoreToPhones < ActiveRecord::Migration
  def change
    remove_column :phones,:num
  end
end
