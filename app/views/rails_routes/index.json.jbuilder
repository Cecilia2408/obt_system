json.array!(@rails_routes) do |rails_route|
  json.extract! rails_route, :id, :routename, :origin, :destination, :price
  json.url rails_route_url(rails_route, format: :json)
end
