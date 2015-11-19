class Dropitems < ActiveRecord::Migration
  def change
    def up
      drop_table :items    
    end
  end
end
