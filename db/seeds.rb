# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Deleting Users..."
User.delete_all

p "Creating Users..."
admin = User.new(
       email: "admin@9granados.com",
       password: "el9admin333"
)

admin.save
p admin
p "Users created..."

p "Creating menus..."
menu_mediodia = Menu.new(
       name: "Menú del medio día",
       price: 12
)
menu_mediodia.save
p menu_mediodia
p "Menus created..."

p "Seeds completed!"
