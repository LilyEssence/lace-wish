json.array!(@dresses) do |dress|
  json.extract! dress, :id, :name, :color, :brand, :type
  json.url dress_url(dress, format: :json)
end
