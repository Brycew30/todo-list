class CreateItemsLists < ActiveRecord::Migration[5.2]
  def change
    create_table :items_lists do |t|
      t.references :item, foreign_key: true
      t.references :list, foreign_key: true
      t.timestamps
    end
  end
end
