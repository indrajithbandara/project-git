class AddDisqusToSetting < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :disqus, :text
  end
end
