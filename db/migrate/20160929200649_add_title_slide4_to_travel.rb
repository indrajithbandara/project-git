class AddTitleSlide4ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :title_slide4, :string
  end
end
