json.array!(@texi_routes) do |texi_route|
  json.extract! texi_route, :id, :routename, :origin, :destination, :distance, :basicCharge
  json.url texi_route_url(texi_route, format: :json)
end
