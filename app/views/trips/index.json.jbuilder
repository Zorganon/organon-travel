json.array!(@trips) do |trip|
  json.extract! trip, :id, :name, :description, :image_url, :price
  json.url trip_url(trip, format: :json)
end
