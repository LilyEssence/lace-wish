class ChangeWishlistIdCapitalization < ActiveRecord::Migration
  def change
    rename_column :users, :WishlistID, :wishlist_id
    rename_column :users, :selllist, :selllist_id
  end
end
