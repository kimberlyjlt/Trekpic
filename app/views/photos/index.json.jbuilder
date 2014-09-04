json.array!(@photos) do |photo|
  json.extract! photo, :id, :user_id, :trip_id, :lat, :lng, :title, :description
  json.url photo_url(photo, format: :json)
end
