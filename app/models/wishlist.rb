class Wishlist < ActiveRecord::Base
  has_many :dress_wishlists
  has_many :dresses, through: :dress_wishlists
end
