# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create a role named "admin"
admin_role = Role.create!(:name => "admin")

# create an admin user
admin_user = User.create!(:email => "admin1@example.com", :password => 'Admin123')

# assign the admin role to the admin user.  (This bit of rails
# magic creates a user_role record in the database.)
admin_user.roles << admin_role

