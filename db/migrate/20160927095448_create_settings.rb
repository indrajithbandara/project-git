class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :title_website
      t.string :title_travel
      t.string :title_event
      t.string :title_footer

      t.timestamps
    end
  end
end
