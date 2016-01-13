class AddPriceToBaskets < ActiveRecord::Migration
  def change
    add_column :baskets,:price,:float
  end
end
