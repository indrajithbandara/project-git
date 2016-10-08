class AddAttachmentBannerTravelToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_travel
    end
  end

  def self.down
    remove_attachment :settings, :banner_travel
  end
end
