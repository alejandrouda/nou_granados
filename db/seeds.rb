require 'open-uri'

p "Deleting Users..."
User.delete_all
p "Deleting Menus"
Menu.delete_all

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

menu_9granados = Menu.new(
       name: "Menú 9 granados",
)
menu_9granados.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594164128/Nou%20granados/Background/background_2_boyxnp.jpg"), filename: 'background_2_boyxnp.jpg', content_type: 'jpg')
menu_9granados.save
p menu_9granados

bodega = Menu.new(
       name: "Bodega",
)
bodega.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594164128/Nou%20granados/Background/background_2_boyxnp.jpg"), filename: 'background_2_boyxnp.jpg', content_type: 'jpg')
bodega.save
p bodega

carta = Menu.new(
       name: "Carta",
)
carta.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594164128/Nou%20granados/Background/background_2_boyxnp.jpg"), filename: 'background_2_boyxnp.jpg', content_type: 'jpg')
carta.save
p carta


p "Menus created..."

p "Seeds completed!"
