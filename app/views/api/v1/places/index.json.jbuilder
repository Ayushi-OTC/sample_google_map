json.array! @locations do |location|
  json.type   "Location"

  json.properties do
    json.id   location.id
    json.name location.name
  end

  json.geometry do
    json.type   "Point"

    json.coordinates [location.latitude, location.longitude]
  end
end
