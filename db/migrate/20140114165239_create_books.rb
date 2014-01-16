class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :description
      t.text :image
      t.text :link
      t.integer :legend_id

      t.timestamps
    end
  end
end
