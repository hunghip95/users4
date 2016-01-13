class ChangeForBaskets < ActiveRecord::Migration
  def change
    change_column :baskets,:price,:integer
  end
end
