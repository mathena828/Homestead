class AddAttachmentImageToProperties < ActiveRecord::Migration[6.0]
  def self.up
    change_table :properties do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :properties, :image
  end
end
