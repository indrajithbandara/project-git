class AddDescriptionSlide3ToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :description_slide3, :string
  end
end
