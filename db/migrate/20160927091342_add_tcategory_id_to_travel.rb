class AddTcategoryIdToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :tcategory_id, :integer
  end
end
