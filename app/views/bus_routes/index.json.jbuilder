json.array!(@bus_routes) do |bus_route|
  json.extract! bus_route, :id, :routename, :BusOrigin, :BusDestination, :price
  json.url bus_route_url(bus_route, format: :json)
end
