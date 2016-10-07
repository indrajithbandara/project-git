class AddEcategoryIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :ecategory_id, :integer
  end
end
