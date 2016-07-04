class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.string :routename
      t.string :BusOrigin
      t.string :BusDestination
      t.float :price

      t.timestamps null: false
    end
  end
end
