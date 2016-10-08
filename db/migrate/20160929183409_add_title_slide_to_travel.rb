class AddTitleSlideToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :title_slide, :string
  end
end
