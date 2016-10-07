class AddAdminToAkira < ActiveRecord::Migration[5.0]
  def change
    add_column :akiras, :admin, :boolean
  end
end
