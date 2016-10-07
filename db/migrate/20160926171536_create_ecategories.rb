class CreateEcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :ecategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
