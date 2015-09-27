class Dress < ActiveRecord::Base
  has_many :dress_wishlists
  has_many :wishlists, through: :dress_wishlists
end
