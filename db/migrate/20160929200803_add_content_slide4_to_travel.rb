class AddContentSlide4ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :content_slide4, :text
  end
end
