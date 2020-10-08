class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :list_link
      t.string :image_link
      t.timestamps
    end
  end
end
