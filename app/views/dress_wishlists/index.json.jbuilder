json.array!(@dress_wishlists) do |dress_wishlist|
  json.extract! dress_wishlist, :id, :dress_id, :wishlist_id
  json.url dress_wishlist_url(dress_wishlist, format: :json)
end
