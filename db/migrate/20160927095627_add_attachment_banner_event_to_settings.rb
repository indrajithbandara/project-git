class AddAttachmentBannerEventToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_event
    end
  end

  def self.down
    remove_attachment :settings, :banner_event
  end
end
