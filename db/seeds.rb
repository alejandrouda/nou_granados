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
              name: "Menú del medio día",
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

# ----TAPAS----
coca= Meal.new(
       name:"Pan de coca con tomate",
       price: 2.75,
       tapa: true
)

coca.menu_id = carta.id
coca.save
p coca

berenjenas= Meal.new(
       name: "Berenjenas en tempura",
       price: 5.50,
       tapa: true
)

berenjenas.menu_id = carta.id
berenjenas.save
p berenjenas

bravas= Meal.new(
       name:"Bravas",
       price: 5.50,
       tapa: true
)

bravas.menu_id = carta.id
bravas.save
p bravas

cr_carrillera= Meal.new(
       name:"Croquetón",
       price: 1.80,
       tapa: true
)

cr_carrillera.menu_id = carta.id
cr_carrillera.save
p cr_carrillera

cr_ceps= Meal.new(
       name:"Croquetón",
       price: 1.80,
       tapa: true
)

cr_ceps.menu_id = carta.id
cr_ceps.save
p cr_ceps

hummus= Meal.new(
       name:"Hummus",
       price: 6.50,
       tapa: true
)

hummus.menu_id = carta.id
hummus.save
p hummus

edamame= Meal.new(
       name:"Edamame",
       price: 5.50,
       tapa: true
)

edamame.menu_id = carta.id
edamame.save
p edamame

jamon= Meal.new(
       name:"Jamon iberico",
       price: 7.75,
       tapa: true
)

jamon.menu_id = carta.id
jamon.save
p jamon

quesos= Meal.new(
       name:"Tabla de quesos",
       price: 7.95,
       tapa: true
)

quesos.menu_id = carta.id
quesos.save
p quesos

taco= Meal.new(
       name:"Taco de confit de pato",
       price: 4.50,
       tapa: true
)

taco.menu_id = carta.id
taco.save
p taco

tiras= Meal.new(
       name:"Tiras de pollo",
       price: 6.75,
       tapa: true
)

tiras.menu_id = carta.id
tiras.save
p tiras

gambas= Meal.new(
       name:"Gamba roja",
       price: 8.90,
       tapa: true
)

gambas.menu_id = carta.id
gambas.save
p gambas

calamares= Meal.new(
       name:"Calamares",
       price: 6.50,
       tapa: true
)
calamares.menu_id = carta.id
calamares.save
p calamares

# ----ENTRANTES----
ensalada= Meal.new(
       name:"Ensalada de hojas",
       price: 6.90,
       starter: true
)

ensalada.menu_id = carta.id
ensalada.save
p ensalada

burratina= Meal.new(
       name:"Burratina",
       price: 10.50,
       starter: true
)

burratina.menu_id = carta.id
burratina.save
p burratina

timbal= Meal.new(
       name:"Timbal de escalivada",
       price: 7.95,
       starter: true
)

timbal.menu_id = carta.id
timbal.save
p timbal

rollo= Meal.new(
       name:"Rollo crujiente",
       price: 8.50,
       starter: true
)

rollo.menu_id = carta.id
rollo.save
p rollo

canelones= Meal.new(
       name:"Canelones",
       price: 4.75,
       starter: true
)

canelones.menu_id = carta.id
canelones.save
p canelones

huevos= Meal.new(
       name:"Huevos estrellados",
       price: 10.90,
       starter: true
)

huevos.menu_id = carta.id
huevos.save
p huevos

carpaccio= Meal.new(
       name:"Carpaccio de lomo",
       price: 12.50,
       starter: true
)

carpaccio.menu_id = carta.id
carpaccio.save
p carpaccio

# ----PRINCIPALES----

hamburguesa= Meal.new(
       name:"Hamburguesa vegetariana",
       price: 9.90,
       main: true
)

hamburguesa.menu_id = carta.id
hamburguesa.save
p hamburguesa

arroz= Meal.new(
       name:"Arroz marinero con sepia",
       price: 5,
       main: true
)

arroz.menu_id = carta.id
arroz.save
p arroz

# ----PESCADOS----

fishnchips= Meal.new(
       name:"Fish & Chips",
       price: 6.90,
       fish: true
)

fishnchips.menu_id = carta.id
fishnchips.save
p fishnchips

tataki= Meal.new(
       name: "Tataki de atun",
       price: 7.75,
       fish: true
)

tataki.menu_id = carta.id
tataki.save
p tataki

pulpo= Meal.new(
       name:"Pulpo a la parrilla",
       price: 8.50,
       fish: true
)

pulpo.menu_id = carta.id
pulpo.save
p pulpo

lubina= Meal.new(
       name:"Suprema de lubina",
       price: 7.50,
       fish: true
)

lubina.menu_id = carta.id
lubina.save
p lubina

# ----CARNES----

corte= Meal.new(
       name:"Corte argentino",
       price: 5.95,
       meat: true
)

corte.menu_id = carta.id
corte.save
p corte

tartar= Meal.new(
       name:"Steak tartar",
       price: 6.90,
       meat: true
)

tartar.menu_id = carta.id
tartar.save
p tartar

cordero= Meal.new(
       name:"Meloso de cordero",
       price: 7.95,
       meat: true
)

cordero.menu_id = carta.id
cordero.save
p cordero

costillar= Meal.new(
       name:"Costillar de cerdo",
       price: 5.95,
       meat: true
)

costillar.menu_id = carta.id
costillar.save
p costillar

# ----POSTRES----

cremacat= Meal.new(
       name:"Crema catalana",
       price: 4.95,
       dessert: true
)

cremacat.menu_id = carta.id
cremacat.save
p cremacat

flan= Meal.new(
       name:"Flan de coco",
       price: 5.50,
       dessert: true
)

flan.menu_id = carta.id
flan.save
p flan

cheesecake= Meal.new(
       name:"Cheese cake",
       price: 6.25,
       dessert: true
)

cheesecake.menu_id = carta.id
cheesecake.save
p cheesecake

lemonpie= Meal.new(
       name:"Lemon pot pie",
       price: 5.75,
       dessert: true
)

lemonpie.menu_id = carta.id
lemonpie.save
p lemonpie

coulant= Meal.new(
       name:"Coulant de chocolate",
       price: 5.95,
       dessert: true
)

coulant.menu_id = carta.id
coulant.save
p coulant

trufas= Meal.new(
       name:"Trufas de chocolate",
       price: 5,
       dessert: true
)

trufas.menu_id = carta.id
trufas.save
p trufas

helado= Meal.new(
       name:"Helado",
       price: 5,
       dessert: true
)

helado.menu_id = carta.id
helado.save
p helado

p "Meals created..."

p "Seeds completed!"
