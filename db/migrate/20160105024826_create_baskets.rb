class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.string :name
      t.integer :num
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
