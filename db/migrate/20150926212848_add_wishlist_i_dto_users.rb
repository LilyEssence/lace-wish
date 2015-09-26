class AddWishlistIDtoUsers < ActiveRecord::Migration
  def change
    add_column :Users, :WishlistID, :integer
  end
end
