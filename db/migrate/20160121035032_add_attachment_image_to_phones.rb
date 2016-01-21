class AddAttachmentImageToPhones < ActiveRecord::Migration
  def self.up
    change_table :phones do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :phones, :image
  end
end
