class AddTitleSlide3ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :title_slide3, :string
  end
end
