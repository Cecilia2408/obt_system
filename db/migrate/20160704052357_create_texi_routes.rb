class CreateTexiRoutes < ActiveRecord::Migration
  def change
    create_table :texi_routes do |t|
      t.string :routename
      t.string :origin
      t.string :destination
      t.float :distance
      t.float :basicCharge

      t.timestamps null: false
    end
  end
end
