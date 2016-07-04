class CreateRailsRoutes < ActiveRecord::Migration
  def change
    create_table :rails_routes do |t|
      t.string :routename
      t.string :origin
      t.string :destination
      t.float :price

      t.timestamps null: false
    end
  end
end
