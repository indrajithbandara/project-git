class AddTitleSlide2ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :title_slide2, :string
  end
end
