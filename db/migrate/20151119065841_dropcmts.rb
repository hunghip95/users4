class Dropcmts < ActiveRecord::Migration
  def change
    def up
      drop_table :cmts 
    end
  end
end
