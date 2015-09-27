class AddWishlistIDtoUsers < ActiveRecord::Migration
  def change
    add_column :users, :WishlistID, :integer
  end
end
