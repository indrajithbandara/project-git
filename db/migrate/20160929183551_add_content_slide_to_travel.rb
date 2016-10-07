class AddContentSlideToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :content_slide, :text
  end
end
