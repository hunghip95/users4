class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :namecustomer
      t.string :namephone
      t.integer :num
      t.string :address
      t.string :phonenumber
      t.references :phone, index:true, foreign_key: true
      t.references :user, index:true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end