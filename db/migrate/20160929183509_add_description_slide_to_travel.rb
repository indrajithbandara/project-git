class AddDescriptionSlideToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :description_slide, :string
  end
end
