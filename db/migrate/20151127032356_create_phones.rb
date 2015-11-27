class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.integer :num
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
