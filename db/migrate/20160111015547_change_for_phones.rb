class ChangeForPhones < ActiveRecord::Migration
  def change
    change_column :phones,:price,:integer
  end
end
