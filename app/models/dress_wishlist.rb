class DressWishlist < ActiveRecord::Base
  belongs_to :wishlist
  belongs_to :dress
end
