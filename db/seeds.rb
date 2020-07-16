require 'open-uri'

p "Deleting Users..."
User.delete_all
p "Deleting Meals"
Meal.delete_all
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
              name: "Menú del medio día (L - V)",
              price: 12.75,
              menu_type: true
       )
       menu_mediodia.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223632/Nou%20granados/Alimentos%20y%20bebidas/Medio_Dia_jxim3i.jpg"), filename: 'Medio_Dia_jxim3i.jpg', content_type: 'jpg')
       menu_mediodia.save
       p menu_mediodia

menu_9granados = Menu.new(
       name: "Menú 9 granados",
       price: 21.90,
       menu_type: true
)
menu_9granados.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594373475/Nou%20granados/Alimentos%20y%20bebidas/menugrupos_vk53sp.jpg"), filename: 'menugrupos_vk53sp.jpg', content_type: 'jpg')
menu_9granados.save
p menu_9granados


carta = Menu.new(
       name: "Carta",
       menu_type: false
)
carta.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223631/Nou%20granados/Alimentos%20y%20bebidas/Carta_alvxgs.jpg"), filename: 'Carta_alvxgs.jpg', content_type: 'jpg')
carta.save
p carta

bodega = Menu.new(
       name: "Bodega",
       menu_type: false
)
bodega.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594222955/Nou%20granados/Alimentos%20y%20bebidas/bodega_uuoqqo.jpg"), filename: 'bodega_uuoqqo.jpg', content_type: 'jpg')
bodega.save
p bodega


p "Menus created..."

p "Creating meals..."

bravas= Meal.new(
       name:"Bravas",
       price: 5,
       tapa: true
)

bravas.menu_id = carta.id
bravas.save
p bravas

berenjenas= Meal.new(
       name: "Berenjenas en tempura",
       price: 6,
       tapa: true
)

berenjenas.menu_id = carta.id
berenjenas.save
p berenjenas

tataki= Meal.new(
       name: "Tataki de atun",
       price: 10,
       fish: true
)

tataki.menu_id = carta.id
tataki.save
p tataki

p "Meals created..."

p "Seeds completed!"
