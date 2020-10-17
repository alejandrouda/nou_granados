require 'open-uri'

# p "Deleting Users..."
# User.delete_all
p "Deleting Meals..."
Meal.delete_all
p "Deleting Drinks..."
Drink.delete_all
p "Deleting Menus..."
Menu.delete_all

# p "Creating Users..."
# admin = User.new(
#        email: "admin@9granados.com",
#        password: "el9admin333"
# )

# admin.save
# p admin

p "Users created..."

p "Creating menus..."

menu_mediodia = Menu.new(
              name: "Menú 9 granados",
              name_en: "Menú 9 granados",
              name_fr: "Menú 9 granados",
              name_cat: "Menú 9 granados",
              price: "",
              menu_type: false,
              medio_dia_type: true,
              drink_type: false
       )
       menu_mediodia.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594373475/Nou%20granados/Alimentos%20y%20bebidas/menugrupos_vk53sp.jpg"), filename: 'menugrupos_vk53sp.jpg', content_type: 'jpg')
       menu_mediodia.save
       p menu_mediodia

carta = Menu.new(
       name: "Carta",
       name_en: "Carta",
       name_fr: "Carte",
       name_cat: "Carta",
       menu_type: false,
       drink_type: false
)
carta.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223632/Nou%20granados/Alimentos%20y%20bebidas/Medio_Dia_jxim3i.jpg"), filename: 'Medio_Dia_jxim3i.jpg', content_type: 'jpg')
carta.save
p carta

bodega = Menu.new(
       name: "Bodega",
       name_en: "Winery",
       name_fr: "Cave",
       name_cat: "Celler",
       menu_type: false,
       drink_type: true
)
bodega.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594222955/Nou%20granados/Alimentos%20y%20bebidas/bodega_uuoqqo.jpg"), filename: 'bodega_uuoqqo.jpg', content_type: 'jpg')
bodega.save
p bodega

# p "Menus created..."

p "Creating meals..."

# ----TAPAS----

coca= Meal.new(
       name:"Pan de coca con tomate",
       name_cat:"Pa amb tomàquet",
       name_fr:"Pain avec tomat",
       name_en:"Tomato bread",
       description: "Pan de coca tostado, con tomate restregado, aceite de oliva y sal gruesa",
       description_cat:"Pa amb tomàquet",
       description_fr:"Pain de coca grillé, avec tomate récurée, huile d'olive et gros sel",
       description_en:"Crunchy catalan tomato bread",
       price: "2,75",
       tapa: true
)

coca.menu_id = carta.id
coca.save
p coca

coca_gf= Meal.new(
       name:"Pan sin gluten con tomate",
       name_cat:"Pa sense gluten amb tomàquet",
       name_fr:"Pain aux tomates sans gluten",
       name_en:"Tomato bread",
       description: "Pan sin gluten tostado, con tomate restregado, aceite de oliva y sal gruesa",
       description_cat:"Pa sense gluten amb tomàquet",
       description_fr:"Pain sans gluten grillé, avec tomate récurée, huile d'olive et gros sel",
       description_en:"Crunchy catalan tomato gluten free bread",
       price: "3,25",
       tapa: true
)

coca_gf.menu_id = carta.id
coca_gf.save
p coca_gf

fregidas= Meal.new(
       name: "Patatas fritas",
       name_cat:"Patates fregides",
       name_fr:"Patatas fritas",
       name_en:"Chips",
       description: "Patatas fritas de paquete",
       description_cat:"Patates fregides",
       description_fr:"Patatas fritas de paquete",
       description_en:"Patatas fritas de paquete",
       price: "2,90",
       tapa: true
)

fregidas.menu_id = carta.id
fregidas.save
p fregidas

bravas= Meal.new(
       name:"Bravas",
       name_cat:"Braves",
       name_fr:"Patatas Bravas",
       name_en:"Patatas bravas",
       description: "Nuestras bravas con salsa de chile chipotle y ali oli",
       description_cat:"Les nostres braves amb salse de xile chipotle",
       description_fr:"Nos bravas avec sauce chili chipotle et ali oli",
       description_en:"Crispy fried potatoes served with chipotle sauce and ali-oli",
       price: "4.90",
       tapa: true
)

bravas.menu_id = carta.id
bravas.save
p bravas

cr_galta= Meal.new(
       name:"Croquetón de carrillera",
       name_cat:"Croquetó de galta",
       name_fr:"Croquetón de porc",
       name_en:"Pork croquette",
       description: "Croquetón casero de carrillera asada(precio por unidad)",
       description_cat:"Croquetó casolà de galta rostida(preu per unitat)",
       description_fr:"Croquette de porc maison rôti (prix unitaire)",
       description_en:"Home made roast pork croquette (price per piece)",
       price: "1,75",
       tapa: true
)

cr_galta.menu_id = carta.id
cr_galta.save
p cr_galta

hummus= Meal.new(
       name:"Hummus de garbanzos",
       name_cat:"Hummus de cigrons",
       name_fr:"Hummus",
       name_en:"Hummus topped",
       description:"Con yogurt, lima, rabanitos, y tostaditas crujientes",
       description_cat:"Amb iogurt, llima, rabanets i torradetes cruixents",
       description_fr:"Avec yogourt, citron vert, radis et toasts croustillants",
       description_en:"With yogurt, lime, and radish served with crostini",
       price: "5,75",
       tapa: true
)

hummus.menu_id = carta.id
hummus.save
p hummus

edamame= Meal.new(
       name:"Edamame",
       name_cat:"Edamame",
       name_fr:"Edamame",
       name_en:"Edamame",
       description:"Con salsa miso, cebolla tierna, y mostaza de Dijon",
       description_cat:"Amb salsa miso, ceba tendra i mostassa de Dijon",
       description_fr:"Avec sauce miso, oignon tendre et moutarde de Dijon",
       description_en:"Served with a miso sauce, spring onions, and a Dijon mustard vinagrette",
       price: "4,75",
       tapa: true
)

edamame.menu_id = carta.id
edamame.save
p edamame

jamon= Meal.new(
       name:"Jamon iberico",
       name_cat:"Pernil ibèric",
       name_fr:"Jambon ibérique",
       name_en:"Iberian ham",
       description: "tapa 50g / ración 100g",
       description_cat:"tapa 50g / racció 100g",
       description_fr:"tapa 50g / ración 100g",
       description_en:"tapa 50g / dish 100g",
       price: "12,90",
       tapa: true
)

jamon.menu_id = carta.id
jamon.save
p jamon

quesos= Meal.new(
       name:"Tabla de quesos",
       name_cat:"Taula de formatges",
       name_fr:"Table de fromages",
       name_en:"Cheese dish",
       description:"con compota y nueces",
       description_cat:"Amb compota i nous",
       description_fr:"Avec compote et noix",
       description_en:"Selection of local cheese",
       price: "6,75",
       tapa: true
)

quesos.menu_id = carta.id
quesos.save
p quesos

tiras= Meal.new(
       name:"Tiras de pollo",
       name_cat:"Tires de pollastre",
       name_fr:"Lanières de poulet",
       name_en:"Chiken strips",
       description:"Marinado estilo oriental con panko, sésamo y mayonesa de wasabi",
       description_cat:"Marinades estil oriental amb panko, sèsam i maionesa de wasabi",
       description_fr:"Style oriental mariné avec panko, mayonnaise au sésame et wasabi",
       description_en:"Asian style panko fried chicken strips, with mild wasabi mayonnaise sauce",
       price: "6,75",
       tapa: true
)

tiras.menu_id = carta.id
tiras.save
p tiras

gambas_tapa= Meal.new(
       name:"Gamba roja",
       name_cat:"Gamba vermella",
       name_fr:"Gamba rouge",
       name_en:"Grilled red prawns",
       description:"de Huelva a la plancha(7 unidades)",
       description_cat:"De Huelva a la planxa (7 unitats)",
       description_fr:"Grillé (7 unités)",
       description_en:"Grilled red prawns from Huelva (7 pieces)",
       price: "8,90",
       tapa: true
)

gambas_tapa.menu_id = carta.id
gambas_tapa.save
p gambas_tapa


# ----ENTRANTES----
ensalada= Meal.new(
       name:"Ensalada de hojas",
       name_cat:"Amanida de fulles",
       name_fr:"Salade de feuilles",
       name_en:"Mixed-green salad",
       description:"Ensalada de hojas con aguacate, mango, frutos secos y vinagreta de miel y mostaza antigua",
       description_cat:"Amb alvocats, mango, fruits secs, i vinagreta de mel i mostassa antiga",
       description_fr:"Salade de feuilles avec avocat, mangue, fruits secs et miel et vinaigrette à la moutarde ancienne",
       description_en:"With avocado, mango, nuts, and a honey-mustard vinagrette",
       price: "8,50",
       meat: true
)

ensalada.menu_id = carta.id
ensalada.save
p ensalada

burratina= Meal.new(
       name:"Ensalada de queso de cabra",
       name_cat:"Amanida de formatge de cabra,",
       name_fr:"Ensalada de queso de cabra",
       name_en:"Goat cheese salad",
       description:"Ensalada de queso de cabra, membrillo, y vinagreta de avellanas",
       description_cat:"Amanida de formatge de cabra, codonyat i vinagreta d'avellanes",
       description_fr:"Salade de chèvre, coing et vinaigrette aux noisettes",
       description_en:"Goat cheese salad, quince, and hazelnut vinaigrette",
       price: "7,90",
       meat: true
)

burratina.menu_id = carta.id
burratina.save
p burratina

timbal= Meal.new(
       name:"Pasta fresca",
       name_cat:"Pasta fresca",
       name_fr:"Pasta fraîches",
       name_en:"Fresh pasta",
       description:"Ravioli de ternera con crema trufada (125gr)",
       description_cat:"Ravioli de vedella amb crema trufada (125gr)",
       description_fr:"Beef ravioli with truffle cream (125gr)",
       description_en:"Oven-baked vegetables timbal, with caramelized goat cheese and our homemade romesco",
       price: "8,25",
       meat: true
)

timbal.menu_id = carta.id
timbal.save
p timbal

rollo= Meal.new(
       name:"Rollo crujiente",
       name_cat:"Farcell cruixent",
       name_fr:"Rouleau croustillant",
       name_en:"Crunchy filo roll",
       description:"Al horno con queso taleggio fundido, rúcula, olivada y tomates secos",
       description_cat: "Al forn amb formatge taleggio fos, ruca, olivada i tomàquets secs",
       description_fr:"Cuit au four avec fromage taleggio fondu, roquette, olive et tomates séchées",
       description_en:"With melted taleggio cheese, sun dried tomatoes, olive pate and arugula",
       price: "6,95",
       meat: true
)

rollo.menu_id = carta.id
rollo.save
p rollo

canelones= Meal.new(
       name:"Canelones",
       name_cat:"Canelons",
       name_fr:"Cannellonis",
       name_en:"Canelloni",
       description:"De carne asada y setas, con crema trufada y dulce de piquillos (ración 3u)",
       description_cat:"Canelons de carn rostida i bolets, amb crema trufada i dolç de piquillos (racció 3u)",
       description_fr:"Rôti de boeuf et champignons, avec crème truffée et piquillos sucrés (portion 3u)",
       description_en:"Canelloni stuffed with roast meat, truffle sauce, and red bell pepper compote (3 pieces)",
       price: "9,90",
       meat: true
)

canelones.menu_id = carta.id
canelones.save
p canelones


# ----PRINCIPALES----




# ----PESCADOS----

hamburguesa= Meal.new(
       name:"Hamburguesa vegetariana",
       name_cat:"Hamburguesa vegetariana",
       name_fr:"Hamburger végétarien",
       name_en:"Veggie burger",
       description:"Hamburguesa vegetariana de remolacha con salsa tzatziki y pan artesano de cerveza negra",
       description_cat:"De remolatxa i soja amb salsa tzatziki i pa artesà de cervesa negra",
       description_fr:"Burger végétarien à la betterave avec sauce tzatziki et pain artisanal brun foncé",
       description_en:"Beetroot and soy veggie burger, with tzatziki sauce in a black beer artisanal bread ",
       price: "9,90",
       fish: true
)

hamburguesa.menu_id = carta.id
hamburguesa.save
p hamburguesa

hamburguesa_c= Meal.new(
       name:"Hamburguesa de ternera",
       name_cat:"Hamburguesa de vedella",
       name_fr:"Hamburgesa de ternera",
       name_en:"Beef burger",
       description:"Hamburguesa de ternera 100% con beicon, cebolla caramelizada, queso taleggio fuera, tomate y lechuga con mayonesa de mostaza antigua y un pan artesano de cerveza",
       description_cat:"Hamburguesa de vedella 100% amb bacó, ceba caramel·litzada, taleggio fora, tomàquet i enciam amb maionesa de mostassa antiga i un pa artesà de cervesa",
       description_fr:"Hamburguesa de ternera 100% con beicon, cebolla caramelizada, queso taleggio fuera, tomate y lechuga con mayonesa de mostaza antigua y un pan artesano de cerveza",
       description_en:"
       100% beef burger with bacon, caramelized onion, taleggio cheese outside, tomato and lettuce with old-fashioned mustard mayonnaise and an artisan beer bread",
       price: "10,90",
       fish: true
)

hamburguesa_c.menu_id = carta.id
hamburguesa_c.save
p hamburguesa_c

tataki= Meal.new(
       name: "Tataki de atun",
       name_cat:"Tataki de tonyina",
       name_fr:"Tataki au thon",
       name_en:"Tuna Tataki",
       description:"con aguacate, pico de gallo y salsa ponzu",
       description_cat:"amb alvocat, pico de gallo i salsa ponzu",
       description_fr:"Avec avocat, pico de gallo et sauce ponzu",
       description_en:"With avocado, pico de gallo, and ponzu sauce",
       price: "11,95",
       fish: true
)

tataki.menu_id = carta.id
tataki.save
p tataki

pulpo= Meal.new(
       name:"Pulpo a la parrilla",
       name_cat:"Pop a la graella",
       name_fr:"Poulpe sur le gril",
       name_en:"Grilled octopus",
       description:"Con parmentier de patatas y aceite de pimentón",
       description_cat:"Pop a la graella amb parmentier, oli extra verge i pebre vermell",
       description_fr:"Avec parmentier et paprika",
       description_en:"With parmentier, seasoned with paprika and local olive oil",
       price: "12,95",
       fish: true
)

pulpo.menu_id = carta.id
pulpo.save
p pulpo

# ----CARNES----

corte= Meal.new(
       name:"Confit de pato",
       name_cat:"Confit d'ànec",
       name_fr:"Confit de pato",
       name_en:"Confit de pato",
       description:"Confit de pato con jugo de asado y chutney de mango",
       description_cat:"Confit d'ànec amb suc de rostit i xutney de mango",
       description_fr:"Confit de pato con jugo de asado y chutney de mango",
       description_en:"Confit de pato con jugo de asado y chutney de mango",
       price: "9,75",
       fish: true
)

corte.menu_id = carta.id
corte.save
p corte

tartar= Meal.new(
       name:"Steak tartar",
       name_cat:"Steak tàrtar",
       name_fr:"Steak tartar",
       name_en:"Steak tartar",
       description:"de ternera, yema de huevo, mostaza de hierbas y tostaditas",
       description_cat:"De vedella, rovell d'ou, mostassa d'herbes i torradetes",
       description_fr:"boeuf, jaune d'oeuf, moutarde aux herbes et toasts",
       description_en:"With egg, herbs, mustard, and crostini (served raw)",
       price: "10,50",
       fish: true
)

tartar.menu_id = carta.id
tartar.save
p tartar

cordero= Meal.new(
       name:"Meloso de cordero",
       name_cat:"Melòs de xai",
       name_fr:"Agneau",
       name_en:"Honeyed lamb",
       description:"A baja temperatura con parmentier, setas, y salsa de miel y romero",
       description_cat:"A baixa temperatura amb parmentier, bolets, i salsa de mel i romani",
       description_fr:"À basse température avec parmentier, champignons et sauce miel et romarin",
       description_en:"Cooked at low temperature with parmentier, mushrooms, and glaze sauce",
       price: "11,50",
       fish: true
)

cordero.menu_id = carta.id
cordero.save
p cordero

# ----POSTRES----

cremacat= Meal.new(
       name:"Miel y mató",
       name_cat:"Mató amb mel i nous",
       name_fr:"Miel y mató",
       name_en:"Miel y mató",
       price: "3,90",
       dessert: true
)

cremacat.menu_id = carta.id
cremacat.save
p cremacat

cheesecake= Meal.new(
       name:"Cheese cake",
       name_cat:"Cheese cake",
       name_fr:"Cheese cake",
       name_en:"Cheese cake",
       description:"Cheese cake con coulis de frutos rojos",
       description_cat:"Cheese cake amb coulis de fruits vermells",
       description_fr:"Cheese cake avec coulis de fruits rouges",
       description_en:"With red fruits sauce",
       price: "5,75",
       dessert: true
)

cheesecake.menu_id = carta.id
cheesecake.save
p cheesecake

lemonpie= Meal.new(
       name:"Crumble de manzana",
       name_cat:"Crumble de poma",
       name_fr:"Crumble de manzana",
       name_en:"Crumble de manzana",
       price: "5,25",
       dessert: true
)

lemonpie.menu_id = carta.id
lemonpie.save
p lemonpie

coulant= Meal.new(
       name:"Coulant de chocolate",
       name_cat:"Coulant de xocolata",
       name_fr:"Coulant au chocolat",
       name_en:"Chocolate coulant",
       description:"Coulant de chocolate con helado de vainilla",
       description_cat:"Coulant de xocolata amb gelat",
       description_fr:"Coulant au chocolat avec glace à la vanille",
       description_en:"With vainilla ice cream ",
       price: "4,50",
       dessert: true
)

coulant.menu_id = carta.id
coulant.save
p coulant

trufas= Meal.new(
       name:"Trufas de chocolate",
       name_cat:"Trufes",
       name_fr:"Truffes au chocolat",
       name_en:"Chocolate truffles",
       description:"Trufas artesanas de chocolate con chupito a elección",
       description_cat:"Trufes artesanes de xocolata amb un xarrup a elecció",
       description_fr:"Truffes artisanales au chocolat avec un shot de votre choix",
       description_en:"Artisanal chocolate truffles, with a chupito",
       price: "4",
       dessert: true
)

trufas.menu_id = carta.id
trufas.save
p trufas

# ----MENU MEDIO DIA----

 mediodia_meal= Meal.new(
               name: "Menú del medio día",
 )

 mediodia_meal.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1597226685/i63n86ryomj3v8km2ls5r7vzcmfh.jpg"), filename: 'i63n86ryomj3v8km2ls5r7vzcmfh.jpg', content_type: 'jpg')
 mediodia_meal.menu_id = menu_mediodia.id
 mediodia_meal.save
 p mediodia_meal

 p "Meals created..."

# ----VINOS----

p "Creating drinks..."

casa_tinto= Drink.new(
       name:"Vino de la casa",
       description: "D.O Navarra; Garnatxa",
       name_cat:"Vi de la casa",
       name_fr:"Vin de la maison",
       name_en:"House wine",
       description_cat:"D.O Navarra; Garnatxa",
       description_fr:"D.O Navarra; Garnatxa",
       description_en:"D.O Navarra; Garnatxa",
       price: "9,00",
       red: true
)

casa_tinto.menu_id = bodega.id
casa_tinto.save
p casa_tinto

viana= Drink.new(
       name:"Principe Viana",
       description: "D.O Navarra; Syrah",
       name_cat:"Principe Viana",
       name_fr:"Principe Viana",
       name_en:"Principe Viana",
       description_cat:"D.O Navarra; Syrah",
       description_fr:"D.O Navarra; Syrah",
       description_en:"D.O Navarra; Syrah",
       price: "10,80",
       red: true
)

viana.menu_id = bodega.id
viana.save
p viana

batan= Drink.new(
       name:"Batan de salas",
       description: "D.O Somontano; Merlot",
       name_cat:"Batan de salas",
       name_fr:"Batan de salas",
       name_en:"Batan de salas",
       description_cat:"D.O Somontano; Merlot",
       description_fr:"D.O Somontano; Merlot",
       description_en:"D.O Somontano; Merlot",
       price: "13,00",
       red: true
)

batan.menu_id = bodega.id
batan.save
p batan

jan= Drink.new(
       name:"Jan Petit",
       description: "D.O Costers del Segre; Garnatxa i Syrah",
       name_cat:"Jan Petit",
       name_fr:"Jan Petit",
       name_en:"Jan Petit",
       description_cat:"D.O Costers del Segre; Garnatxa i Syrah",
       description_fr:"D.O Costers del Segre; Garnatxa i Syrah",
       description_en:"D.O Costers del Segre; Garnatxa i Syrah",
       price: "13,00",
       red: true
)

jan.menu_id = bodega.id
jan.save
p jan

atrepat= Drink.new(
       name:"Atrepat",
       description: "D.O Conca de barberá; Trepat",
       name_cat:"Atrepat",
       name_fr:"Atrepat",
       name_en:"Atrepat",
       description_cat:"D.O Conca de barberá; Trepat",
       description_fr:"D.O Conca de barberá; Trepat",
       description_en:"D.O Conca de barberá; Trepat",
       price: "13,50",
       red: true
)

atrepat.menu_id = bodega.id
atrepat.save
p atrepat

gos= Drink.new(
       name:"El gos",
       description: "D.O Montsant; Garnatxa",
       name_cat:"El gos",
       name_fr:"El gos",
       name_en:"El gos",
       description_cat:"D.O Montsant; Garnatxa",
       description_fr:"D.O Montsant; Garnatxa",
       description_en:"D.O Montsant; Garnatxa",
       price: "14,25",
       red: true
)

gos.menu_id = bodega.id
gos.save
p gos

matsu= Drink.new(
       name:"Matsu Pícaro",
       description: "D.O Toro; Tinta de toro",
       name_cat:"Matsu Pícaro",
       name_fr:"Matsu Pícaro",
       name_en:"Matsu Pícaro",
       description_cat:"D.O Toro; Tinta de toro",
       description_fr:"D.O Toro; Tinta de toro",
       description_en:"D.O Toro; Tinta de toro",
       price: "14,25",
       red: true
)

matsu.menu_id = bodega.id
matsu.save
p matsu

haro_joven= Drink.new(
       name:"López de Haro tempranillo",
       description: "D.O Rioja; Ull de llebre",
       name_cat:"López de Haro tempranillo",
       name_fr:"López de Haro tempranillo",
       name_en:"López de Haro tempranillo",
       description_cat:"D.O Rioja; Ull de llebre",
       description_fr:"D.O Rioja; Ull de llebre",
       description_en:"D.O Rioja; Ull de llebre",
       price: "11,70",
       red: true
)

haro_joven.menu_id = bodega.id
haro_joven.save
p haro_joven

vega= Drink.new(
       name:"Rioja Vega",
       description: "D.O Rioja; Ull de llebre i Garnatxa",
       name_cat:"Rioja Vega",
       name_fr:"Rioja Vega",
       name_en:"Rioja Vega",
       description_cat:"D.O Rioja; Ull de llebre i Garnatxa",
       description_fr:"D.O Rioja; Ull de llebre i Garnatxa",
       description_en:"D.O Rioja; Ull de llebre i Garnatxa",
       price: "16,25",
       red: true
)

vega.menu_id = bodega.id
vega.save
p vega

haro_reserva= Drink.new(
       name:"López de Haro reserva",
       description: "D.O Rioja; Ull de llebre i Garnatxa",
       price: "16,70",
       red: true,
       name_cat:"López de Haro reserva",
       name_fr:"López de Haro reserva",
       name_en:"López de Haro reserva",
       description_cat:"D.O Rioja; Ull de llebre i Garnatxa",
       description_fr:"D.O Rioja; Ull de llebre i Garnatxa",
       description_en:"D.O Rioja; Ull de llebre i Garnatxa",
)

haro_reserva.menu_id = bodega.id
haro_reserva.save
p haro_reserva

berdugo= Drink.new(
       name:"Martín Berdugo",
       description: "D.O Ribera del Duero; Mencía",
       price: "15,25",
       red: true,
       name_cat:"Martín Berdugo",
       name_fr:"Martín Berdugo",
       name_en:"Martín Berdugo",
       description_cat:"D.O Ribera del Duero; Mencía",
       description_fr:"D.O Ribera del Duero; Mencía",
       description_en:"D.O Ribera del Duero; Mencía",
)

berdugo.menu_id = bodega.id
berdugo.save
p berdugo

ferratus= Drink.new(
       name:"Ferratus",
       description: "D.O Ribera del duero; Ull de llebre",
       price: "16,75",
       red: true,
       name_cat:"Ferratus",
       name_fr:"Ferratus",
       name_en:"Ferratus",
       description_cat:"D.O Ribera del duero; Ull de llebre",
       description_fr:"D.O Ribera del duero; Ull de llebre",
       description_en:"D.O Ribera del duero; Ull de llebre",
)

ferratus.menu_id = bodega.id
ferratus.save
p ferratus

atzar= Drink.new(
       name:"Atzar",
       description: "D.O Priorat; Garnatxa i Carinyenya",
       price: "17,90",
       red: true,
       name_cat:"Atzar",
       name_fr:"Atzar",
       name_en:"Atzar",
       description_cat:"D.O Priorat; Garnatxa i Carinyenya",
       description_fr:"D.O Priorat; Garnatxa i Carinyenya",
       description_en:"D.O Priorat; Garnatxa i Carinyenya",
)

atzar.menu_id = bodega.id
atzar.save
p atzar

magnum= Drink.new(
       name:"Magnum número 9",
       description: "D.O Ribera del Queiles; Cabernet franc, Ull de llebre",
       price: "40,50",
       red: true,
       name_cat:"Magnum número 9",
       name_fr:"Magnum número 9",
       name_en:"Magnum número 9",
       description_cat:"D.O Ribera del Queiles; Cabernet franc, Ull de llebre",
       description_fr:"D.O Ribera del Queiles; Cabernet franc, Ull de llebre",
       description_en:"D.O Ribera del Queiles; Cabernet franc, Ull de llebre",
)

magnum.menu_id = bodega.id
magnum.save
p magnum

casa_blanco= Drink.new(
       name:"Vino de la casa",
       description: "D.O Navarra; Garnatxa",
       price: "9,00",
       white: true,
       name_cat:"Vi de la casa",
       name_fr:"Vin de la maison",
       name_en:"House wine",
       description_cat:"D.O Navarra; Garnatxa",
       description_fr:"D.O Navarra; Garnatxa",
       description_en:"D.O Navarra; Garnatxa",
)

casa_blanco.menu_id = bodega.id
casa_blanco.save
p casa_blanco

moraleda= Drink.new(
       name:"Moraleda Blanc",
       description: "D.O Navarara; Chardonnay",
       price: "11,25",
       white: true,
       name_cat:"Moraleda Blanc",
       name_fr:"Moraleda Blanc",
       name_en:"Moraleda Blanc",
       description_cat:"D.O Navarara; Chardonnay",
       description_fr:"D.O Navarara; Chardonnay",
       description_en:"D.O Navarara; Chardonnay",
)

moraleda.menu_id = bodega.id
moraleda.save
p moraleda

bardos= Drink.new(
       name:"Bardos",
       description: "D.O Rueda; Verdejo",
       price: "12,50",
       white: true,
       name_cat:"Bardos",
       name_fr:"Bardos",
       name_en:"Bardos",
       description_cat:"D.O Rueda; Verdejo",
       description_fr:"D.O Rueda; Verdejo",
       description_en:"D.O Rueda; Verdejo",
)

bardos.menu_id = bodega.id
bardos.save
p bardos

primavera= Drink.new(
       name:"Blanc primavera",
       description: "D.O Penedes; Xarello, Macebeu, Parellada",
       price: "13,00",
       white: true,
       name_cat:"Blanc primavera",
       name_fr:"Blanc primavera",
       name_en:"Blanc primavera",
       description_cat:"D.O Penedes; Xarello, Macebeu, Parellada",
       description_fr:"D.O Penedes; Xarello, Macebeu, Parellada",
       description_en:"D.O Penedes; Xarello, Macebeu, Parellada",
)

primavera.menu_id = bodega.id
primavera.save
p primavera

libalis= Drink.new(
       name:"Libalis",
       description: "D.O Vall de Sadacia; Moscatell, Viura, Malvasia",
       price: "13,00",
       white: true,
       name_cat:"Libalis",
       name_fr:"Libalis",
       name_en:"Libalis",
       description_cat:"D.O Vall de Sadacia; Moscatell, Viura, Malvasia",
       description_fr:"D.O Vall de Sadacia; Moscatell, Viura, Malvasia",
       description_en:"D.O Vall de Sadacia; Moscatell, Viura, Malvasia",
)

libalis.menu_id = bodega.id
libalis.save
p libalis

pulpo= Drink.new(
       name:"Bienbebido pulpo",
       description: "D.O Galicia; Albariño",
       price: "13,50",
       white: true,
       name_cat:"Bienbebido pulpo",
       name_fr:"Bienbebido pulpo",
       name_en:"Bienbebido pulpo",
       description_cat:"D.O Galicia; Albariño",
       description_fr:"D.O Galicia; Albariño",
       description_en:"D.O Galicia; Albariño",
)

pulpo.menu_id = bodega.id
pulpo.save
p pulpo

sere= Drink.new(
       name:"Blanc de Seré",
       description: "D.O Costers del Segre; Macabeu, Parrellada, Chardonnay",
       price: "14,00",
       white: true,
       name_cat:"Blanc de Seré",
       name_fr:"Blanc de Seré",
       name_en:"Blanc de Seré",
       description_cat:"D.O Costers del Segre; Macabeu, Parrellada, Chardonnay",
       description_fr:"D.O Costers del Segre; Macabeu, Parrellada, Chardonnay",
       description_en:"D.O Costers del Segre; Macabeu, Parrellada, Chardonnay",
)

sere.menu_id = bodega.id
sere.save
p sere

casa_rosado= Drink.new(
       name:"Vino de la casa",
       description: "D.O Navarra; Garnatxa",
       price: "9,00",
       rose: true,
       name_cat:"Vi de la casa",
       name_fr:"Vin de la maison",
       name_en:"House wine",
       description_cat:"D.O Navarra; Garnatxa",
       description_fr:"D.O Navarra; Garnatxa",
       description_en:"D.O Navarra; Garnatxa",
)

casa_rosado.menu_id = bodega.id
casa_rosado.save
p casa_rosado

rovellats= Drink.new(
       name:"Rovellats",
       description: "D.O Penedés; Merlot",
       price: "12,95",
       rose: true,
       name_cat:"Rovellats",
       name_fr:"Rovellats",
       name_en:"Rovellats",
       description_cat:"D.O Penedés; Merlot",
       description_fr:"D.O Penedés; Merlot",
       description_en:"D.O Penedés; Merlot",
)

rovellats.menu_id = bodega.id
rovellats.save
p rovellats

aroa= Drink.new(
       name:"Aroa Larrosa",
       description: "D.O Navarra; Garnatxa i Ull de llebre",
       price: "15,20",
       rose: true,
       name_cat:"Aroa Larrosa",
       name_fr:"Aroa Larrosa",
       name_en:"Aroa Larrosa",
       description_cat:"D.O Navarra; Garnatxa i Ull de llebre",
       description_fr:"D.O Navarra; Garnatxa i Ull de llebre",
       description_en:"D.O Navarra; Garnatxa i Ull de llebre",
)

aroa.menu_id = bodega.id
aroa.save
p aroa

lujan= Drink.new(
       name:"Lujan Brut Nature",
       description: "Cava, Macabeu, Parrellada, Xarel-lo",
       price: "10,75",
       cava: true,
       name_cat:"Lujan Brut Nature",
       name_fr:"Lujan Brut Nature",
       name_en:"Lujan Brut Nature",
       description_cat:"Cava, Macabeu, Parrellada, Xarel-lo",
       description_fr:"Cava, Macabeu, Parrellada, Xarel-lo",
       description_en:"Cava, Macabeu, Parrellada, Xarel-lo",
)

lujan.menu_id = bodega.id
lujan.save
p lujan

premier= Drink.new(
       name:"Premier Brut Rovellats",
       description: "Cava, Macabeu i Parrellada",
       price: "17,20",
       cava: true,
       name_cat:"Premier Brut Rovellats",
       name_fr:"Premier Brut Rovellats",
       name_en:"Premier Brut Rovellats",
       description_cat:"Cava, Macabeu i Parrellada",
       description_fr:"Cava, Macabeu i Parrellada",
       description_en:"Cava, Macabeu i Parrellada",
)

premier.menu_id = bodega.id
premier.save
p premier

rovellats= Drink.new(
       name:"Rovellats Gran Reserva Brut Nature",
       description: "Cava, Xarel-lo, Parrellada, Macabeu",
       price: "22,50",
       cava: true,
       name_cat:"Rovellats Gran Reserva Brut Nature",
       name_fr:"Rovellats Gran Reserva Brut Nature",
       name_en:"Rovellats Gran Reserva Brut Nature",
       description_cat:"Cava, Xarel-lo, Parrellada, Macabeu",
       description_fr:"Cava, Xarel-lo, Parrellada, Macabeu",
       description_en:"Cava, Xarel-lo, Parrellada, Macabeu",
)

rovellats.menu_id = bodega.id
rovellats.save
p rovellats

rovellats_brut= Drink.new(
       name:"Rovellats Brut Imperial Rose",
       description: "Cava, Garnatxa",
       price: "17,50",
       cava: true,
       name_cat:"Rovellats Brut Imperial Rose",
       name_fr:"Rovellats Brut Imperial Rose",
       name_en:"Rovellats Brut Imperial Rose",
       description_cat:"Cava, Garnatxa",
       description_fr:"Cava, Garnatxa",
       description_en:"Cava, Garnatxa",
)

rovellats_brut.menu_id = bodega.id
rovellats_brut.save
p rovellats_brut

# ----BEBIDAS----
alhambra_verde= Drink.new(
       name:"Alhambra verde",
       price: "3,50",
       beer: true,
       name_cat:"Alhambra verde",
       name_fr:"Alhambra verde",
       name_en:"Alhambra verde"
)

alhambra_verde.menu_id = aperitivo.id
alhambra_verde.save
p alhambra_verde

alhambra_roja= Drink.new(
       name:"Alhambra roja",
       price: "3,50",
       beer: true,
       name_cat:"Alhambra roja",
       name_fr:"Alhambra roja",
       name_en:"Alhambra roja"
)

alhambra_roja.menu_id = aperitivo.id
alhambra_roja.save
p alhambra_roja

estrella= Drink.new(
       name:"Estrella Galicia",
       price: "2,90",
       beer: true,
       name_cat:"Estrella Galicia",
       name_fr:"Estrella Galicia",
       name_en:"Estrella Galicia"
)

estrella.menu_id = aperitivo.id
estrella.save
p estrella

coronita= Drink.new(
       name:"Coronita",
       price: "3,30",
       beer: true,
       name_cat:"Coronita",
       name_fr:"Coronita",
       name_en:"Coronita"
)

coronita.menu_id = aperitivo.id
coronita.save
p coronita

maestra= Drink.new(
       name:"Mahou Maestra",
       price: "2,95",
       beer: true,
       name_cat:"Mahou Maestra",
       name_fr:"Mahou Maestra",
       name_en:"Mahou Maestra"
)

maestra.menu_id = aperitivo.id
maestra.save
p maestra

cero= Drink.new(
       name:"Mahou tostada 0,0",
       price: "2,95",
       beer: true,
       name_cat:"Mahou tostada 0,0",
       name_fr:"Mahou tostada 0,0",
       name_en:"Mahou tostada 0,0"
)

cero.menu_id = aperitivo.id
cero.save
p cero

mahou_gluten= Drink.new(
       name:"Mahou sin gluten",
       price: "3,25",
       beer: true,
       name_cat:"Mahou sin gluten",
       name_fr:"Mahou sin gluten",
       name_en:"Mahou sin gluten"
)

mahou_gluten.menu_id = aperitivo.id
mahou_gluten.save
p mahou_gluten

ipa= Drink.new(
       name:"Mahou IPA",
       price: "3,50",
       beer: true,
       name_cat:"Mahou IPA",
       name_fr:"Mahou IPA",
       name_en:"Mahou IPA"
)

ipa.menu_id = aperitivo.id
ipa.save
p ipa

konig= Drink.new(
       name:"Konig Ludwig",
       price: "3,90",
       beer: true,
       name_cat:"Konig Ludwig",
       name_fr:"Konig Ludwig",
       name_en:"Konig Ludwig"
)

konig.menu_id = aperitivo.id
konig.save
p konig

p "Drinks created..."

p "Seeds completed!"

