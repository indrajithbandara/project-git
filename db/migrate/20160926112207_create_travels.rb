class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :title
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
