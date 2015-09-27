class CreateDressWishlists < ActiveRecord::Migration
  def change
    create_table :dress_wishlists do |t|
      t.integer :dress_id
      t.integer :wishlist_id

      t.timestamps null: false
    end
  end
end
