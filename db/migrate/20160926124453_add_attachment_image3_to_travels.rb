class AddAttachmentImage3ToTravels < ActiveRecord::Migration
  def self.up
    change_table :travels do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :travels, :image3
  end
end
