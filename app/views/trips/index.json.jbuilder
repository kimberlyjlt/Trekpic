json.array!(@trips) do |trip|
  json.extract! trip, :id, :user_id, :title, :description
  json.url trip_url(trip, format: :json)
end
