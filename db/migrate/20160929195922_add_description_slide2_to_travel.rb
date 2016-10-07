class AddDescriptionSlide2ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :description_slide2, :string
  end
end
