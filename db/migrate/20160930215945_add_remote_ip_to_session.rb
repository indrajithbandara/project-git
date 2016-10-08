class AddRemoteIpToSession < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :remote_ip, :integer
  end
end
