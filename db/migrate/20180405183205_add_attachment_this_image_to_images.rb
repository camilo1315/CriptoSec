class AddAttachmentThisImageToImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.attachment :this_image
    end
  end

  def self.down
    remove_attachment :images, :this_image
  end
end
