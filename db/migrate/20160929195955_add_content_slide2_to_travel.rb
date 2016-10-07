class AddContentSlide2ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :content_slide2, :text
  end
end
