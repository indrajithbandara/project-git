class AddAttachmentImage2ToTravels < ActiveRecord::Migration
  def self.up
    change_table :travels do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :travels, :image2
  end
end
