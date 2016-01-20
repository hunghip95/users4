class AddIndexToPhones < ActiveRecord::Migration
  def change
    add_index :phones,:name
  end
end
