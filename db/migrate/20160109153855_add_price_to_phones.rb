class AddPriceToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :price, :float
  end
end
