class AddAttachmentBannerAboutToSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.attachment :banner_about
    end
  end

  def self.down
    remove_attachment :settings, :banner_about
  end
end
