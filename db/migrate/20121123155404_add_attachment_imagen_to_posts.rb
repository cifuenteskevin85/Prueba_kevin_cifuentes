class AddAttachmentImagenToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :imagen
    end
  end

  def self.down
    drop_attached_file :posts, :imagen
  end
end
