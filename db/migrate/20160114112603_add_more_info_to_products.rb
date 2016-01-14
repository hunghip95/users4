class AddMoreInfoToProducts < ActiveRecord::Migration
  def change
    remove_column :products,:num
  end
end
