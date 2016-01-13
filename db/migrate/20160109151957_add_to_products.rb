class AddToProducts < ActiveRecord::Migration
  def change
    remove_column :products, :num
    add_column :products, :price, :float
  end
end
