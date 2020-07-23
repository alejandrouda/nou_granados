require 'open-uri'

p "Deleting Users..."
User.delete_all
p "Deleting Meals..."
Meal.delete_all
p "Deleting Drinks..."
Drink.delete_all
p "Deleting Menus..."
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
              menu_type: true,
              drink_type: false
       )
       menu_mediodia.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223632/Nou%20granados/Alimentos%20y%20bebidas/Medio_Dia_jxim3i.jpg"), filename: 'Medio_Dia_jxim3i.jpg', content_type: 'jpg')
       menu_mediodia.save
       p menu_mediodia

menu_9granados = Menu.new(
       name: "Menú 9 granados",
       price: 21.90,
       menu_type: true,
       drink_type: false
)
menu_9granados.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594373475/Nou%20granados/Alimentos%20y%20bebidas/menugrupos_vk53sp.jpg"), filename: 'menugrupos_vk53sp.jpg', content_type: 'jpg')
menu_9granados.save
p menu_9granados


carta = Menu.new(
       name: "Carta",
       menu_type: false,
       drink_type: false
)
carta.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223631/Nou%20granados/Alimentos%20y%20bebidas/Carta_alvxgs.jpg"), filename: 'Carta_alvxgs.jpg', content_type: 'jpg')
carta.save
p carta

bodega = Menu.new(
       name: "Bodega",
       menu_type: false,
       drink_type: true
)
bodega.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1594222955/Nou%20granados/Alimentos%20y%20bebidas/bodega_uuoqqo.jpg"), filename: 'bodega_uuoqqo.jpg', content_type: 'jpg')
bodega.save
p bodega


p "Menus created..."

p "Creating meals..."

# ----TAPAS----
coca= Meal.new(
       name:"Pan de coca con tomate",
       description: "Pan de coca tostado, con tomate restregado, aceite de oliva y sal gruesa",
       price: "2,75",
       tapa: true
)

coca.menu_id = carta.id
coca.save
p coca

berenjenas= Meal.new(
       name: "Berenjenas en tempura",
       description: "Berenjenas en tempura de cerveza y miel",
       price: "5,50",
       tapa: true
)

berenjenas.menu_id = carta.id
berenjenas.save
p berenjenas

bravas= Meal.new(
       name:"Bravas",
       description: "Nuestras bravas con salsa de chile chipotle y ali oli",
       price: "5,50",
       tapa: true
)

bravas.menu_id = carta.id
bravas.save
p bravas

cr_carrillera= Meal.new(
       name:"Croquetón de boletus",
       description: "Croquetón casero de boletus y trufa (precio por unidad)",
       price: "1,80",
       tapa: true
)

cr_carrillera.menu_id = carta.id
cr_carrillera.save
p cr_carrillera

cr_ceps= Meal.new(
       name:"Croquetón de carrillera",
       description: "Croquetón casero de carrillera con jugo de asado (precio por unidad)",
       price: "1,80",
       tapa: true
)

cr_ceps.menu_id = carta.id
cr_ceps.save
p cr_ceps

hummus= Meal.new(
       name:"Hummus de garbanzos",
       description:"con yogurt, lima, rabanitos, y tostaditas crujientes",
       price: "6,50",
       tapa: true
)

hummus.menu_id = carta.id
hummus.save
p hummus

edamame= Meal.new(
       name:"Edamame",
       description:"con salsa miso, cebolla tierna, y mostaza de Dijon",
       price: "5,50",
       tapa: true
)

edamame.menu_id = carta.id
edamame.save
p edamame

jamon= Meal.new(
       name:"Jamon iberico",
       description: "tapa 50g / ración 100g",
       price: "7,75",
       price_racion: "15,00",
       tapa: true
)

jamon.menu_id = carta.id
jamon.save
p jamon

quesos= Meal.new(
       name:"Tabla de quesos",
       description:"con compota y nueces",
       price: "7,95",
       tapa: true
)

quesos.menu_id = carta.id
quesos.save
p quesos

taco= Meal.new(
       name:"Taco de confit de pato",
       description:"con trufa, crema agria y jalapeños",
       price: "4,50",
       tapa: true
)

taco.menu_id = carta.id
taco.save
p taco

tiras= Meal.new(
       name:"Tiras de pollo",
       description:"marinado estilo oriental con panko, sésamo y mayonesa de wasabi",
       price: "6,75",
       tapa: true
)

tiras.menu_id = carta.id
tiras.save
p tiras

gambas_tapa= Meal.new(
       name:"Gamba roja",
       description:"de Huelva a la plancha(7 unidades)",
       price: "8,90",
       tapa: true
)

gambas_tapa.menu_id = carta.id
gambas_tapa.save
p gambas_tapa

calamares_tapa= Meal.new(
       name:"Calamares",
       description:"a la andaluza",
       price: "6,50",
       tapa: true
)
calamares_tapa.menu_id = carta.id
calamares_tapa.save
p calamares_tapa

fishnchips_tapa= Meal.new(
       name:"Fish & Chips",
       description:"de lomo de bacalao de Islandia, con chutney de mango y salsa tártara",
       price: "6,90",
       tapa: true
)

fishnchips_tapa.menu_id = carta.id
fishnchips_tapa.save
p fishnchips_tapa

tataki_tapa= Meal.new(
       name: "Tataki de atun",
       description:"con aguacate, pico de gallo y salsa ponzu",
       price: "7,75",
       tapa: true
)

tataki_tapa.menu_id = carta.id
tataki_tapa.save
p tataki_tapa

pulpo_tapa= Meal.new(
       name:"Pulpo a la parrilla",
       description:"con patatas confitadas y pimentón",
       price: "8,50",
       tapa: true
)

pulpo_tapa.menu_id = carta.id
pulpo_tapa.save
p pulpo_tapa

lubina_tapa= Meal.new(
       name:"Suprema de lubina",
       description:"Suprema de lubina fresca a la plancha con verduritas y salsa de maracuyá",
       price: "7,50",
       tapa: true
)

lubina_tapa.menu_id = carta.id
lubina_tapa.save
p lubina_tapa

corte_tapa= Meal.new(
       name:"Corte argentino",
       description:"de ternera a la plancha con patatas fritas, padrones, y salsa de Idiazábal",
       price: "5,95",
       tapa: true
)

corte_tapa.menu_id = carta.id
corte_tapa.save
p corte_tapa

tartar_tapa= Meal.new(
       name:"Steak tartar",
       description:"de ternera, yema de huevo, mostaza de hierbas y tostaditas",
       price: "6,90",
       tapa: true
)

tartar_tapa.menu_id = carta.id
tartar_tapa.save
p tartar_tapa

cordero_tapa= Meal.new(
       name:"Cordero",
       description:"a baja temperatura con parmentier, setas, y salsa de miel y romero",
       price: "7,95",
       tapa: true
)

cordero_tapa.menu_id = carta.id
cordero_tapa.save
p cordero_tapa

costillar_tapa= Meal.new(
       name:"Costillar de cerdo",
       description:"Costillar de cerdo lacado con salsa barbacoa casera y patatas fritas",
       price: "5,95",
       tapa: true
)

costillar_tapa.menu_id = carta.id
costillar_tapa.save
p costillar_tapa


# ----ENTRANTES----
ensalada= Meal.new(
       name:"Ensalada de hojas",
       description:"Ensalada de hojas con aguacate, mango, frutos secos y vinagreta de miel y mostaza antigua",
       price: "6,90",
       price_racion: "9,75",
       starter: true
)

ensalada.menu_id = carta.id
ensalada.save
p ensalada

burratina= Meal.new(
       name:"Burratina",
       description:"con pesto de albahaca, pistacho y tomate confitado",
       price: "10,50",
       starter: true
)

burratina.menu_id = carta.id
burratina.save
p burratina

timbal= Meal.new(
       name:"Timbal de escalivada",
       description:"con queso de cabra caramelizado y salsa romesco casera",
       price: "7,95",
       starter: true
)

timbal.menu_id = carta.id
timbal.save
p timbal

rollo= Meal.new(
       name:"Rollo crujiente",
       description:"al horno con queso taleggio fundido, rúcula, olivada y tomates secos",
       price: "8,50",
       starter: true
)

rollo.menu_id = carta.id
rollo.save
p rollo

canelones= Meal.new(
       name:"Canelones",
       description:"de carne asada y setas, con crema trufada y dulce de piquillos (tapa 1u / ración 3u)",
       price: "4,75",
       price_racion: "12,50",
       starter: true
)

canelones.menu_id = carta.id
canelones.save
p canelones

huevos= Meal.new(
       name:"Huevos estrellados",
       description:"con patatas fritas, jamón ibérico y virutas de foie",
       price: "10,90",
       starter: true
)

huevos.menu_id = carta.id
huevos.save
p huevos

carpaccio= Meal.new(
       name:"Carpaccio de lomo",
       description:" Carpaccio de lomo de vaca madurada, con Idiazábal, piñones y vinagreta de fresones y lima",
       price: "12,50",
       starter: true
)

carpaccio.menu_id = carta.id
carpaccio.save
p carpaccio

# ----PRINCIPALES----

hamburguesa= Meal.new(
       name:"Hamburguesa vegetariana",
       description:"Hamburguesa vegetariana de remolacha con salsa tzatziki y pan artesano de cerveza negra",
       price: "9,90",
       main: true
)

hamburguesa.menu_id = carta.id
hamburguesa.save
p hamburguesa

arroz= Meal.new(
       name:"Arroz marinero con sepia",
       description:"Arroz marinero con sepia y gamba de Huelva (mínimo 2 personas | precio por persona)",
       price: "16,75",
       main: true
)

arroz.menu_id = carta.id
arroz.save
p arroz

# ----PESCADOS----

fishnchips= Meal.new(
       name:"Fish & Chips",
       description:"de lomo de bacalao de Islandia, con chutney de mango y salsa tártara",
       price: "6,90",
       price_racion: "12,90",
       fish: true
)

fishnchips.menu_id = carta.id
fishnchips.save
p fishnchips

tataki= Meal.new(
       name: "Tataki de atun",
       description:"con aguacate, pico de gallo y salsa ponzu",
       price: "7,75",
       price_racion: "14,50",
       fish: true
)

tataki.menu_id = carta.id
tataki.save
p tataki

pulpo= Meal.new(
       name:"Pulpo a la parrilla",
       description:"con patatas confitadas y pimentón",
       price: "8,50",
       price_racion: "15,90",
       fish: true
)

pulpo.menu_id = carta.id
pulpo.save
p pulpo

lubina= Meal.new(
       name:"Suprema de lubina",
       description:"Suprema de lubina fresca a la plancha con verduritas y salsa de maracuyá",
       price: "7,50",
       price_racion: "13,90",
       fish: true
)

lubina.menu_id = carta.id
lubina.save
p lubina

# ----CARNES----

corte= Meal.new(
       name:"Corte argentino",
       description:"de ternera a la plancha, con patatas fritas, padrones, y salsa de Idiazábal",
       price: "5,95",
       price_racion: "11,90",
       meat: true
)

corte.menu_id = carta.id
corte.save
p corte

tartar= Meal.new(
       name:"Steak tartar",
       description:"de ternera, yema de huevo, mostaza de hiervas y tostaditas",
       price: "6,90",
       price_racion: "12,90",
       meat: true
)

tartar.menu_id = carta.id
tartar.save
p tartar

cordero= Meal.new(
       name:"Cordero",
       description:"Cordero a baja temperatura, con parmentier, setas, y salsa de miel y romero",
       price: "7,95",
       price_racion: "14,75",
       meat: true
)

cordero.menu_id = carta.id
cordero.save
p cordero

costillar= Meal.new(
       name:"Costillar de cerdo",
       description:"Costillar de cerdo lacado con salsa barbacoa casera y patatas fritas",
       price: "5,95",
       price_racion: "11,90",
       meat: true
)

costillar.menu_id = carta.id
costillar.save
p costillar

# ----POSTRES----

cremacat= Meal.new(
       name:"Crema catalana",
       description:"Crema catalana cremada con galleta crujiente",
       price: "4,95",
       dessert: true
)

cremacat.menu_id = carta.id
cremacat.save
p cremacat

flan= Meal.new(
       name:"Flan de coco",
       description:"Flan de coco con nata montada",
       price: "5,50",
       dessert: true
)

flan.menu_id = carta.id
flan.save
p flan

cheesecake= Meal.new(
       name:"Cheese cake",
       description:"Cheese cake con coulis de frutos rojos",
       price: "6,25",
       dessert: true
)

cheesecake.menu_id = carta.id
cheesecake.save
p cheesecake

lemonpie= Meal.new(
       name:"Lemon pot pie",
       description:"Lemon pot pie con crumble de galleta",
       price: "5,75",
       dessert: true
)

lemonpie.menu_id = carta.id
lemonpie.save
p lemonpie

coulant= Meal.new(
       name:"Coulant de chocolate",
       description:"Coulant de chocolate con helado de vainilla",
       price: "5,95",
       dessert: true
)

coulant.menu_id = carta.id
coulant.save
p coulant

trufas= Meal.new(
       name:"Trufas de chocolate",
       description:"Trufas artesanas de chocolate con chupito a elección",
       price: "5,75",
       dessert: true
)

trufas.menu_id = carta.id
trufas.save
p trufas

helado= Meal.new(
       name:"Helado",
       description:"2 bolas de helado al gusto (pregunta por los sabores del día)",
       price: "4,95",
       dessert: true
)

helado.menu_id = carta.id
helado.save
p helado

p "Meals created..."

p "Creating drinks..."

casa_tinto= Drink.new(
       name:"Vino de la casa",
       description: "Garnatxa",
       price: "10,00",
       price_glass: "2,50",
       red: true
)

casa_tinto.menu_id = bodega.id
casa_tinto.save
p casa_tinto

viana= Drink.new(
       name:"Principe Viana",
       description: "Syrah",
       price: "12,00",
       price_glass: "2,90",
       red: true
)

viana.menu_id = bodega.id
viana.save
p viana

batan= Drink.new(
       name:"Batan de salas",
       description: "Merlot",
       price: "14,50",
       red: true
)

batan.menu_id = bodega.id
batan.save
p batan

jan= Drink.new(
       name:"Jan Petit",
       description: "Garnatxa i Syrah",
       price: "14,50",
       price_glass: "3,50",
       red: true
)

jan.menu_id = bodega.id
jan.save
p jan

atrepat= Drink.new(
       name:"Atrepat",
       description: "Trepat",
       price: "14,95",
       price_glass: "3,95",
       red: true
)

atrepat.menu_id = bodega.id
atrepat.save
p atrepat

gos= Drink.new(
       name:"El gos",
       description: "Garnatxa",
       price: "15,75",
       red: true
)

gos.menu_id = bodega.id
gos.save
p gos

matsu= Drink.new(
       name:"Matsu Pícaro",
       description: "Tinta de toro",
       price: "15,75",
       price_glass: "3,95",
       red: true
)

matsu.menu_id = bodega.id
matsu.save
p matsu

haro_joven= Drink.new(
       name:"López de Haro tempranillo",
       description: "Rioja, Ull de llebre",
       price: "12,90",
       price_glass: "3,25",
       red: true
)

haro_joven.menu_id = bodega.id
haro_joven.save
p haro_joven

vega= Drink.new(
       name:"Rioja Vega",
       description: "Rioja Ull de llebre i garnatxa",
       price: "17,95",
       red: true
)

vega.menu_id = bodega.id
vega.save
p vega

haro_reserva= Drink.new(
       name:"López de Haro reserva",
       description: "Rioja Ull de llebre i garnatxa",
       price: "18,50",
       price_glass: "4,50",
       red: true
)

haro_reserva.menu_id = bodega.id
haro_reserva.save
p haro_reserva

berdugo= Drink.new(
       name:"Martín Berdugo",
       description: "Ribera del Duero, Mencia",
       price: "16,90",
       red: true
)

berdugo.menu_id = bodega.id
berdugo.save
p berdugo

ferratus= Drink.new(
       name:"Ferratus",
       description: "Ribera del duero, ull de llebre",
       price: "18,50",
       price_glass: "4,50",
       red: true
)

ferratus.menu_id = bodega.id
ferratus.save
p ferratus

orto= Drink.new(
       name:"Orto",
       description: "Carinyena, garnatxa, cabernet sauvignon, ull de llebre",
       price: "19,50",
       red: true
)

orto.menu_id = bodega.id
orto.save
p orto

atzar= Drink.new(
       name:"Atzar",
       description: "Garnatxa i carinyenya",
       price: "19,90",
       price_glass: "4,90",
       red: true
)

atzar.menu_id = bodega.id
atzar.save
p atzar

magnum= Drink.new(
       name:"Magnum número 9",
       description: "Cabernet franc, ull de llebre",
       price: "45,00",
       red: true
)

magnum.menu_id = bodega.id
magnum.save
p magnum

casa_blanco= Drink.new(
       name:"Vino de la casa",
       description: "Garnatxa",
       price: "10,00",
       price_glass: "2,50",
       white: true
)

casa_blanco.menu_id = bodega.id
casa_blanco.save
p casa_blanco

moraleda= Drink.new(
       name:"Moraleda Blanc",
       description: "Chardonnay",
       price: "12,50",
       price_glass: "2,90",
       white: true
)

moraleda.menu_id = bodega.id
moraleda.save
p moraleda

bardos= Drink.new(
       name:"Bardos",
       description: "Verdejo",
       price: "13,90",
       price_glass: "3,30",
       white: true
)

bardos.menu_id = bodega.id
bardos.save
p bardos

primavera= Drink.new(
       name:"Blanc primavera",
       description: "Xarello, macebeu, parellada",
       price: "14,50",
       price_glass: "3,50",
       white: true
)

primavera.menu_id = bodega.id
primavera.save
p primavera

libalis= Drink.new(
       name:"Libalis",
       description: "Moscatell, viuea, malvasia",
       price: "14,50",
       price_glass: "3,50",
       white: true
)

libalis.menu_id = bodega.id
libalis.save
p libalis

pulpo= Drink.new(
       name:"Bienbebido pulpo",
       description: "Albariño",
       price: "14,95",
       price_glass: "3,75",
       white: true
)

pulpo.menu_id = bodega.id
pulpo.save
p pulpo

sere= Drink.new(
       name:"Blanc de Seré",
       description: "Macabeu, parrellada, chardonnay",
       price: "15,50",
       price_glass: "3,95",
       white: true
)

sere.menu_id = bodega.id
sere.save
p sere

casa_rosado= Drink.new(
       name:"Vino de la casa",
       description: "Garnatxa",
       price: "10,00",
       price_glass: "2,50",
       rose: true
)

casa_rosado.menu_id = bodega.id
casa_rosado.save
p casa_rosado

rovellats= Drink.new(
       name:"Rovellats",
       description: "Merlot",
       price: "12,95",
       price_glass: "3,25",
       rose: true
)

rovellats.menu_id = bodega.id
rovellats.save
p rovellats

aroa= Drink.new(
       name:"Aroa Larrosa",
       description: "Garnatxa i ull de llebre",
       price: "16,90",
       rose: true
)

aroa.menu_id = bodega.id
aroa.save
p aroa

lujan= Drink.new(
       name:"Lujan Brut Nature",
       description: "Macabeu, parrellada, xarel-lo",
       price: "11,95",
       price_glass: "2,95",
       cava: true
)

lujan.menu_id = bodega.id
lujan.save
p lujan

premier= Drink.new(
       name:"Premier Brut Rovellats",
       description: "Macabeu i parrellada",
       price: "18,00",
       cava: true
)

premier.menu_id = bodega.id
premier.save
p premier

rovellats= Drink.new(
       name:"Rovellats Gran Reserva Brut Nature",
       description: "Xarel-lo, parrellada, macabeu",
       price: "25,00",
       cava: true
)

rovellats.menu_id = bodega.id
rovellats.save
p rovellats

rovellats_brut= Drink.new(
       name:"Rovellats Brut Imperial Rose",
       description: "Garnatxa",
       price: "19,50",
       cava: true
)

rovellats_brut.menu_id = bodega.id
rovellats_brut.save
p rovellats_brut

p "Drinks created..."

p "Seeds completed!"
