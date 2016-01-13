class AddkeyToBaskets < ActiveRecord::Migration
  def change
    add_reference :baskets, :phone, index: true, foreign_key: true
  end
end
