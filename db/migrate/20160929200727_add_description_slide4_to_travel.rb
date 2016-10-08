class AddDescriptionSlide4ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :description_slide4, :string
  end
end
