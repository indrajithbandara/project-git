class AddAttachmentImage4ToTravels < ActiveRecord::Migration
  def self.up
    change_table :travels do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :travels, :image4
  end
end
