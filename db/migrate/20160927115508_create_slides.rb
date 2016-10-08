class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.string :title
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
