require 'open-uri'

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
menu_mediodia.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594164128/Nou%20granados/Background/background_2_boyxnp.jpg"), filename: 'background_2_boyxnp.jpg', content_type: 'jpg')
menu_mediodia.save
p menu_mediodia
p "Menus created..."

p "Seeds completed!"
