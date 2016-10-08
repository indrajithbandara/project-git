class AddAttachmentImage1ToTravels < ActiveRecord::Migration
  def self.up
    change_table :travels do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :travels, :image1
  end
end
