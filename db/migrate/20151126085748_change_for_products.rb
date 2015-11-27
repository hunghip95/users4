class ChangeForProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.remove :num,:price
    end
  end
end
