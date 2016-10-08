class AddContentSlide3ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :content_slide3, :text
  end
end
