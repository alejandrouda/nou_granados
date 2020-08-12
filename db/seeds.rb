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
              name: "Menú del medio día",
              name_en: "Executive menu",
              name_fr: "Menu du jour",
              name_cat: "Menú de mig dia",
              price: "12.75",
              menu_type: false,
              medio_dia_type: true,
              drink_type: false
       )
       menu_mediodia.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223632/Nou%20granados/Alimentos%20y%20bebidas/Medio_Dia_jxim3i.jpg"), filename: 'Medio_Dia_jxim3i.jpg', content_type: 'jpg')
       menu_mediodia.save
       p menu_mediodia

menu_9granados = Menu.new(
       name: "Menú 9 granados",
       name_en: "Menú 9 granados",
       name_fr: "Menú 9 granados",
       name_cat: "Menú 9 granados",
       price: "21.90",
       menu_type: true,
       drink_type: false
)
menu_9granados.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594373475/Nou%20granados/Alimentos%20y%20bebidas/menugrupos_vk53sp.jpg"), filename: 'menugrupos_vk53sp.jpg', content_type: 'jpg')
menu_9granados.save
p menu_9granados


carta = Menu.new(
       name: "Carta",
       name_en: "Carta",
       name_fr: "Carte",
       name_cat: "Carta",
       menu_type: false,
       drink_type: false
)
carta.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1594223631/Nou%20granados/Alimentos%20y%20bebidas/Carta_alvxgs.jpg"), filename: 'Carta_alvxgs.jpg', content_type: 'jpg')
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

aperitivo = Menu.new(
       name: "Bebidas",
       name_en: "Drinks",
       name_fr: "Boissons",
       name_cat: "Begudes",
       menu_type: false,
       aperitive_type: true
)
aperitivo.photo.attach(io: URI.open("https://res.cloudinary.com/dfyhqslry/image/upload/v1595580265/Nou%20granados/Alimentos%20y%20bebidas/gin-tonic-2_mjqbrt.jpg"), filename: 'gin-tonic-2_mjqbrt.jpg', content_type: 'jpg')
aperitivo.save
p aperitivo


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

berenjenas= Meal.new(
       name: "Berenjenas en tempura",
       name_cat:"Albergínies en tempura",
       name_fr:"Aubergines en tempura",
       name_en:"Tempura aubergines",
       description: "Berenjenas en tempura de cerveza y miel",
       description_cat:"Albergínies en tempura de cervesa i mel",
       description_fr:"aubergines à la bière et au miel tempura",
       description_en:"Beer buttered aubergine slices served with honey",
       price: "5,50",
       tapa: true
)

berenjenas.menu_id = carta.id
berenjenas.save
p berenjenas

bravas= Meal.new(
       name:"Bravas",
       name_cat:"Braves",
       name_fr:"Patatas Bravas",
       name_en:"Patatas bravas",
       description: "Nuestras bravas con salsa de chile chipotle y ali oli",
       description_cat:"Les nostres braves amb salse de xile chipotle",
       description_fr:"Nos bravas avec sauce chili chipotle et ali oli",
       description_en:"Crispy fried potatoes served with chipotle sauce and ali-oli",
       price: "5,50",
       tapa: true
)

bravas.menu_id = carta.id
bravas.save
p bravas

cr_carrillera= Meal.new(
       name:"Croquetón de boletus",
       name_cat:"Croquetó de ceps",
       name_fr:"Croquette de champignon",
       name_en:"Mushrooms croquette",
       description: "Croquetón casero de cèpes y trufa (precio por unidad)",
       description_cat:"Croquetó casolà de ceps i tòfona (preu per unitat)",
       description_fr:"Croquette aux cèpes et truffes maison (prix unitaire)",
       description_en:"Home made mushrooms croquette (price per piece)",
       price: "1,80",
       tapa: true
)

cr_carrillera.menu_id = carta.id
cr_carrillera.save
p cr_carrillera

cr_ceps= Meal.new(
       name:"Croquetón de carrillera",
       name_cat:"Croquetó de galta",
       name_fr:"Croquetón de porc",
       name_en:"Pork croquette",
       description: "Croquetón casero de carrillera con jugo de asado (precio por unidad)",
       description_cat:"Croquetó casolà de galta rostida amb el seu suc (preu per unitat)",
       description_fr:"Croquette de porc maison au jus de rôti (prix unitaire)",
       description_en:"Home made roast pork croquette, with glazing sauce (price per piece)",
       price: "1,80",
       tapa: true
)

cr_ceps.menu_id = carta.id
cr_ceps.save
p cr_ceps

hummus= Meal.new(
       name:"Hummus de garbanzos",
       name_cat:"Hummus de cigrons",
       name_fr:"Hummus",
       name_en:"Hummus topped",
       description:"Con yogurt, lima, rabanitos, y tostaditas crujientes",
       description_cat:"Amb iogurt, llima, rabanets i torradetes cruixents",
       description_fr:"Avec yogourt, citron vert, radis et toasts croustillants",
       description_en:"With yogurt, lime, and radish served with crostini",
       price: "6,50",
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
       price: "5,50",
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
       price: "7,75",
       price_racion: "15,00",
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
       price: "7,95",
       tapa: true
)

quesos.menu_id = carta.id
quesos.save
p quesos

taco= Meal.new(
       name:"Taco de confit de pato",
       description:"con trufa, crema agria y jalapeños",
       name_cat:"Taco de confit d'ànec",
       name_fr:"Taco au canard confit",
       name_en:"Confit duck tacos",
       description_cat:"Amb trufa, crema agre i jalapeños",
       description_fr:"à la truffe, à la crème sure et avec piments jalapeños",
       description_en:"with truffle, sour cream, and jalapeños",
       price: "4,50",
       tapa: true
)

taco.menu_id = carta.id
taco.save
p taco

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

calamares_tapa= Meal.new(
       name:"Calamares",
       name_cat:"Calamars",
       name_fr:"Calamars",
       name_en:"Calamari",
       description:"Calamares a la andaluza",
       description_cat:"Calamars a l'Andalusa",
       description_fr:"Calamars au style Andaluza",
       description_en:"Fried Calamari Andalusian style",
       price: "6,50",
       tapa: true
)
calamares_tapa.menu_id = carta.id
calamares_tapa.save
p calamares_tapa

fishnchips_tapa= Meal.new(
       name:"Fish & Chips",
       name_cat:"Fish & Chips",
       name_fr:"Fish & Chips",
       name_en:"Fish & Chips",
       description:"De lomo de bacalao de Islandia, con chutney de mango y salsa tártara",
       description_cat:"de llom de bacallà d'Islandia amb xutney de mango i salsa tàrtara",
       description_fr:"Longe de morue islandaise, chutney de mangue et sauce tartare",
       description_en:"Crunchy Iceland's cod, mango chutney and tartara sauce",
       price: "6,90",
       tapa: true
)

fishnchips_tapa.menu_id = carta.id
fishnchips_tapa.save
p fishnchips_tapa

tataki_tapa= Meal.new(
       name: "Tataki de atun",
       name_cat:"Tataki de tonyina",
       name_fr:"Tataki au thon",
       name_en:"Tuna Tataki",
       description:"con aguacate, pico de gallo y salsa ponzu",
       description_cat:"amb alvocat, pico de gallo i salsa ponzu",
       description_fr:"Avec avocat, pico de gallo et sauce ponzu",
       description_en:"With avocado, pico de gallo, and ponzu sauce",
       price: "7,75",
       tapa: true
)

tataki_tapa.menu_id = carta.id
tataki_tapa.save
p tataki_tapa

pulpo_tapa= Meal.new(
       name:"Pulpo a la parrilla",
       name_cat:"Pop a la graella",
       name_fr:"Poulpe sur le gril",
       name_en:"Grilled octopus",
       description:"Con patatas confitadas y pimentón",
       description_cat:"Pop a la graella amb patates confitades, oli extra verge i pebre vermell",
       description_fr:"Avec pommes de terre confites et paprika",
       description_en:"With potato confit seasoned with paprika and local olive oil",
       price: "8,50",
       tapa: true
)

pulpo_tapa.menu_id = carta.id
pulpo_tapa.save
p pulpo_tapa

lubina_tapa= Meal.new(
       name:"Suprema de lubina",
       name_cat:"Suprema de llobarro",
       name_fr:"Loup de mer",
       name_en:"Seabass",
       description:"Suprema de lubina fresca a la plancha con verduritas y salsa de maracuyá",
       description_cat:"Suprema de llobarro fresc a la planxa amb verduretes i salsa de maracuyà",
       description_fr:"Suprême de bar frais grillé aux légumes et sauce aux fruits de la passion",
       description_en:"Fresh grilled sea bass with vegetables and a passion fruit sauce",
       price: "7,50",
       tapa: true
)

lubina_tapa.menu_id = carta.id
lubina_tapa.save
p lubina_tapa

corte_tapa= Meal.new(
       name:"Corte argentino",
       name_cat:"Tall Argentí",
       name_fr:"Viande argentine",
       name_en:"Argentinian steak",
       description:"De ternera a la plancha con patatas fritas, padrones, y salsa de Idiazábal",
       description_cat:"De vedella a la planxa amb patates fregides, padró, i salsa de formatge Idiazàbal",
       description_fr:"Veau grillé avec frites, patrons et sauce Idiazábal",
       description_en:"Veal argentinian steak grilled, with fries, padron peppers, and Idiazabal sauce",
       price: "5,95",
       tapa: true
)

corte_tapa.menu_id = carta.id
corte_tapa.save
p corte_tapa

tartar_tapa= Meal.new(
       name:"Steak tartar",
       name_cat:"Steak tàrtar",
       name_fr:"Steak tartar",
       name_en:"Steak tartar",
       description:"de ternera, yema de huevo, mostaza de hierbas y tostaditas",
       description_cat:"De vedella, rovell d'ou, mostassa d'herbes i torradetes",
       description_fr:"boeuf, jaune d'oeuf, moutarde aux herbes et toasts",
       description_en:"With egg, herbs, mustard, and crostini (served raw)",
       price: "6,90",
       tapa: true
)

tartar_tapa.menu_id = carta.id
tartar_tapa.save
p tartar_tapa

cordero_tapa= Meal.new(
       name:"Meloso de cordero",
       name_cat:"Melós de xai",
       name_fr:"Agneau",
       name_en:"Honeyed lamb",
       description:"A baja temperatura con parmentier, setas, y salsa de miel y romero",
       description_cat:"A baixa temperatura amb parmentier, bolets, i salsa de mel i romaní",
       description_fr:"À basse température avec parmentier, champignons et sauce miel et romarin",
       description_en:"Cooked at low temperature with parmentier, mushrooms, and glaze sauce",
       price: "7,95",
       tapa: true
)

cordero_tapa.menu_id = carta.id
cordero_tapa.save
p cordero_tapa

costillar_tapa= Meal.new(
       name:"Costillar de cerdo",
       name_cat:"Costellar de porc",
       name_fr:"Côtes de porc",
       name_en:"Roasted pork ribs",
       description:"Costillar de cerdo lacado con salsa barbacoa casera y patatas fritas",
       description_cat:"Costellar de porc lacat amb salsa barbacoa feta a casa i patates fregides",
       description_fr:"Côtes de porc laquées avec sauce barbecue maison et pommes de terre sautées",
       description_en:"With a homemade barbecue sauce and french fries",
       price: "5,95",
       tapa: true
)

costillar_tapa.menu_id = carta.id
costillar_tapa.save
p costillar_tapa


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
       price: "6,90",
       price_racion: "9,75",
       starter: true
)

ensalada.menu_id = carta.id
ensalada.save
p ensalada

burratina= Meal.new(
       name:"Burratina",
       name_cat:"Burratina",
       name_fr:"Burratina",
       name_en:"Burratina",
       description:"Con pesto de albahaca, pistacho y tomate confitado",
       description_cat:"Amb pesto d'alfàbrega, pistatxo i tomàquet confitat",
       description_fr:"Au pesto de basilic, pistache et tomates confites",
       description_en:"Italian fresh cheese with pesto, tomato confit, and a postaccio dressing",
       price: "10,50",
       starter: true
)

burratina.menu_id = carta.id
burratina.save
p burratina

timbal= Meal.new(
       name:"Timbal de escalivada",
       name_cat:"Timbal d´escalivada",
       name_fr:"Timbale végétale",
       name_en:"Oven-baked vegetables",
       description:"Con queso de cabra caramelizado y salsa romesco casera",
       description_cat:"Amb formatge de cabra caramelitzat i salsa romesco casolana",
       description_fr:"Avec fromage de chèvre caramélisé et sauce romesco maison",
       description_en:"Oven-baked vegetables timbal, with caramelized goat cheese and our homemade romesco",
       price: "7,95",
       starter: true
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
       price: "8,50",
       starter: true
)

rollo.menu_id = carta.id
rollo.save
p rollo

canelones= Meal.new(
       name:"Canelones",
       name_cat:"Canelons",
       name_fr:"Cannellonis",
       name_en:"Canelloni",
       description:"De carne asada y setas, con crema trufada y dulce de piquillos (tapa 1u / ración 3u)",
       description_cat:"Canelons de carn rostida i bolets, amb crema trufada i dolç de piquillos (tapa 1 u / racció 3u)",
       description_fr:"Rôti de boeuf et champignons, avec crème truffée et piquillos sucrés (tapa 1u / portion 3u)",
       description_en:"Canelloni stuffed with roast meat, truffle sauce, and red bell pepper compote (tapa 1 piece / dish 3 pieces)",
       price: "4,75",
       price_racion: "12,50",
       starter: true
)

canelones.menu_id = carta.id
canelones.save
p canelones

huevos= Meal.new(
       name:"Huevos estrellados",
       name_cat:"Ous estrellats",
       name_fr:"Huevos estrellados",
       name_en:"Huevos estrellados",
       description:"Huevos de corral estrellados, con patatas fritas, jamón ibérico y foie",
       description_cat:"Ous de corral estrellats, amb patates fregides, pernil ibèric i foie",
       description_fr:"Œufs fermiers grillés, pommes de terre sautées, jambon ibérique et foie",
       description_en:"Organic ffried eggs with iberian ham, foie gras, and french fries",
       price: "10,90",
       starter: true
)

huevos.menu_id = carta.id
huevos.save
p huevos

carpaccio= Meal.new(
       name:"Carpaccio de lomo",
       name_cat:"Carpaccio de llom",
       name_fr:"Carpaccio de longe",
       name_en:"Loin Carpaccio",
       description:" Carpaccio de lomo de vaca madurada, con Idiazábal, piñones y vinagreta de fresones y lima",
       description_cat:"Carpaccio de llom de vaca madurat, amb Idiazàbal, pinyons, i vinagreta de maduixots i llima",
       description_fr:"Carpaccio de longe de vache affinée, avec Idiazábal, pignons de pin et vinaigrette aux fraises et citron vert",
       description_en:"Aged beef loin carpaccio, with Idiazábal sauce, nuts, and a strawberry-lime vinagrette",
       price: "12,50",
       starter: true
)

carpaccio.menu_id = carta.id
carpaccio.save
p carpaccio

# ----PRINCIPALES----

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
       main: true
)

hamburguesa.menu_id = carta.id
hamburguesa.save
p hamburguesa

arroz= Meal.new(
       name:"Arroz marinero con sepia",
       name_cat:"Arròs de Pals",
       name_fr:"Paella de mer",
       name_en:"Paella",
       description:"Arroz marinero con sepia y gamba de Huelva (mínimo 2 personas | precio por persona) 25 minutos",
       description_cat:"Mariner amb sipia i gambes (minim 2 persones | preu per persona ) 25 minuts",
       description_fr:"Riz aux fruits de mer avec seiche et gambas de Huelva (minimum 2 personnes | prix par personne) 25 minutes",
       description_en:"Home made paella with red prawns and cuttlefish (price per person | minimum 2 persons) 25 minutes",
       price: "16,75",
       fish: true
)

arroz.menu_id = carta.id
arroz.save
p arroz

# ----PESCADOS----

fishnchips= Meal.new(
       name:"Fish & Chips",
       name_cat:"Fish & Chips",
       name_fr:"Fish & Chips",
       name_en:"Fish & Chips",
       description:"De lomo de bacalao de Islandia, con chutney de mango y salsa tártara",
       description_cat:"de llom de bacallà d'Islandia amb xutney de mango i salsa tàrtara",
       description_fr:"Longe de morue islandaise, chutney de mangue et sauce tartare",
       description_en:"Crunchy Iceland's cod, mango chutney and tartara sauce",
       price: "6,90",
       price_racion: "12,90",
       fish: true
)

fishnchips.menu_id = carta.id
fishnchips.save
p fishnchips

tataki= Meal.new(
       name: "Tataki de atun",
       name_cat:"Tataki de tonyina",
       name_fr:"Tataki au thon",
       name_en:"Tuna Tataki",
       description:"con aguacate, pico de gallo y salsa ponzu",
       description_cat:"amb alvocat, pico de gallo i salsa ponzu",
       description_fr:"Avec avocat, pico de gallo et sauce ponzu",
       description_en:"With avocado, pico de gallo, and ponzu sauce",
       price: "7,75",
       price_racion: "14,50",
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
       description:"Con patatas confitadas y pimentón",
       description_cat:"Pop a la graella amb patates confitades, oli extra verge i pebre vermell",
       description_fr:"Avec pommes de terre confites et paprika",
       description_en:"With potato confit seasoned with paprika and local olive oil",
       price: "8,50",
       price_racion: "15,90",
       fish: true
)

pulpo.menu_id = carta.id
pulpo.save
p pulpo

lubina= Meal.new(
       name:"Suprema de lubina",
       name_cat:"Suprema de llobarro",
       name_fr:"Loup de mer",
       name_en:"Seabass",
       description:"Suprema de lubina fresca a la plancha con verduritas y salsa de maracuyá",
       description_cat:"Suprema de llobarro fresc a la planxa amb verduretes i salsa de maracuyà",
       description_fr:"Suprême de bar frais grillé aux légumes et sauce aux fruits de la passion",
       description_en:"Fresh grilled sea bass with vegetables and a passion fruit sauce",
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
       name_cat:"Tall Argentí",
       name_fr:"Viande argentine",
       name_en:"Argentinian steak",
       description:"De ternera a la plancha con patatas fritas, padrones, y salsa de Idiazábal",
       description_cat:"De vedella a la planxa amb patates fregides, padron, i salsa de formatge Idiazàbal",
       description_fr:"Veau grillé avec frites, patrons et sauce Idiazábal",
       description_en:"Veal argentinian steak grilled, with fries, padron peppers, and Idiazabal sauce",
       price: "5,95",
       price_racion: "11,90",
       meat: true
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
       price: "6,90",
       price_racion: "12,90",
       meat: true
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
       price: "7,95",
       price_racion: "14,75",
       meat: true
)

cordero.menu_id = carta.id
cordero.save
p cordero

costillar= Meal.new(
       name:"Costillar de cerdo",
       name_cat:"Costellar de porc",
       name_fr:"Côtes de porc",
       name_en:"Roasted pork ribs",
       description:"Costillar de cerdo lacado con salsa barbacoa casera y patatas fritas",
       description_cat:"Costellar de porc lacat amb salsa barbacoa feta a casa i patates fregides",
       description_fr:"Côtes de porc laquées avec sauce barbecue maison et pommes de terre sautées",
       description_en:"With a homemade barbecue sauce and french fries",
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
       name_cat:"Crema Cremada",
       name_fr:"Crema catalana",
       name_en:"Crema catalana",
       description:"Crema catalana cremada con galleta crujiente",
       description_cat:"Crema cremada amb galeta cruixent",
       description_fr:"Crème catalane avec biscuit croustillant",
       description_en:"Crema catalana with crispy biscuit ",
       price: "4,95",
       dessert: true
)

cremacat.menu_id = carta.id
cremacat.save
p cremacat

flan= Meal.new(
       name:"Flan de coco",
       name_cat:"Flam de coco",
       name_fr:"Flan de coco",
       name_en:"Coconut flan",
       description:"Flan de coco con nata montada",
       description_cat:"Flam de coco amb crumble de galeta",
       description_fr:"Flan de coco avec de la crème",
       description_en:"With cookies crumble",
       price: "5,50",
       dessert: true
)

flan.menu_id = carta.id
flan.save
p flan

cheesecake= Meal.new(
       name:"Cheese cake",
       name_cat:"Cheese cake",
       name_fr:"Cheese cake",
       name_en:"Cheese cake",
       description:"Cheese cake con coulis de frutos rojos",
       description_cat:"Cheese cake amb coulis de fruits vermells",
       description_fr:"Cheese cake avec coulis de fruits rouges",
       description_en:"With red fruits sauce",
       price: "6,25",
       dessert: true
)

cheesecake.menu_id = carta.id
cheesecake.save
p cheesecake

lemonpie= Meal.new(
       name:"Lemon pot pie",
       name_cat:"Lemon pot pie",
       name_fr:"Lemon pot pie",
       name_en:"Lemon pot pie",
       description:"Lemon pot pie con crumble de galleta",
       description_cat:"Lemon pot pie amb crumble de galeta",
       description_fr:"Lemon pot pie avec crumble aux biscuits",
       description_en:"With cookies crumble",
       price: "5,75",
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
       price: "5,95",
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
       price: "5,75",
       dessert: true
)

trufas.menu_id = carta.id
trufas.save
p trufas

helado= Meal.new(
       name:"Helado",
       name_cat:"Gelat",
       name_fr:"Glacée",
       name_en:"Ice cream",
       description:"2 bolas de helado al gusto (pregunta por los sabores del día)",
       description_cat:"2 boles de gelat al gust (demana al cambrer per als sabors del dia)",
       description_fr:"2 boules de glace au goût (demandez les saveurs du jour)",
       description_en:"2 Ice cream balls (ask for the daily flavours)",
       price: "4,95",
       dessert: true
)

helado.menu_id = carta.id
helado.save
p helado

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
       price: "10,00",
       price_glass: "2,50",
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
       price: "12,00",
       price_glass: "2,90",
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
       price: "14,50",
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
       price: "14,50",
       price_glass: "3,50",
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
       price: "14,95",
       price_glass: "3,95",
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
       price: "15,75",
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
       price: "15,75",
       price_glass: "3,95",
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
       price: "12,90",
       price_glass: "3,25",
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
       price: "17,95",
       red: true
)

vega.menu_id = bodega.id
vega.save
p vega

haro_reserva= Drink.new(
       name:"López de Haro reserva",
       description: "D.O Rioja; Ull de llebre i Garnatxa",
       price: "18,50",
       price_glass: "4,50",
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
       price: "16,90",
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
       price: "18,50",
       price_glass: "4,50",
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

orto= Drink.new(
       name:"Orto",
       description: "D.O Montsant; Carinyena, Garnatxa, Cabernet Sauvignon, Ull de llebre",
       price: "19,50",
       red: true,
       name_cat:"Orto",
       name_fr:"Orto",
       name_en:"Orto",
       description_cat:"D.O Montsant; Carinyena, Garnatxa, Cabernet Sauvignon, Ull de llebre",
       description_fr:"D.O Montsant; Carinyena, Garnatxa, Cabernet Sauvignon, Ull de llebre",
       description_en:"D.O Montsant; Carinyena, Garnatxa, Cabernet Sauvignon, Ull de llebre",
)

orto.menu_id = bodega.id
orto.save
p orto

atzar= Drink.new(
       name:"Atzar",
       description: "D.O Priorat; Garnatxa i Carinyenya",
       price: "19,90",
       price_glass: "4,90",
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
       price: "45,00",
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
       price: "10,00",
       price_glass: "2,50",
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
       price: "12,50",
       price_glass: "2,90",
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
       price: "13,90",
       price_glass: "3,30",
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
       price: "14,50",
       price_glass: "3,50",
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
       price: "14,50",
       price_glass: "3,50",
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
       price: "14,95",
       price_glass: "3,75",
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
       price: "15,50",
       price_glass: "3,95",
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
       price: "10,00",
       price_glass: "2,50",
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
       price_glass: "3,25",
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
       price: "16,90",
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
       price: "11,95",
       price_glass: "2,95",
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
       price: "18,00",
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
       price: "25,00",
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
       price: "19,50",
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

caña= Drink.new(
       name:"Caña",
       description: "Alhambra especial",
       price: "2,50",
       beer: true,
       name_cat:"Canya",
       name_fr:"Caña",
       name_en:"Caña",
       description_cat:"Alhambra especial",
       description_fr:"Alhambra especial",
       description_en:"Alhambra especial",
)

caña.menu_id = aperitivo.id
caña.save
p caña

big_caña= Drink.new(
       name:"Caña 0,5 L",
       description: "Alhambra especial",
       price: "4,00",
       beer: true,
       name_cat:"Canya 0.5L",
       name_fr:"Caña 0,5 L",
       name_en:"Caña 0,5 L",
       description_cat:"Alhambra especial",
       description_fr:"Alhambra especial",
       description_en:"Alhambra especial",
)

big_caña.menu_id = aperitivo.id
big_caña.save
p big_caña

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

aperol= Drink.new(
       name:"Aperol Spritz",
       price: "5,50",
       aperitive: true,
       name_cat:"Aperol Spritz",
       name_fr:"Aperol Spritz",
       name_en:"Aperol Spritz"
)

aperol.menu_id = aperitivo.id
aperol.save
p aperol

mojito= Drink.new(
       name:"Mojito",
       price: "5,25",
       aperitive: true,
       name_cat:"Mojito",
       name_fr:"Mojito",
       name_en:"Mojito"
)

mojito.menu_id = aperitivo.id
mojito.save
p mojito

mimosa= Drink.new(
       name:"Mimosa",
       description: "Cava y zumo de naranja natural",
       price: "4,50",
       aperitive: true,
       name_cat:"Mimosa",
       name_fr:"Mimosa",
       name_en:"Mimosa",
       description_cat:"Cava i suc de taronja natural",
       description_fr:"Cava et jus d'orange naturel",
       description_en:"Cava and natural orange juice",
)

mimosa.menu_id = aperitivo.id
mimosa.save
p mimosa

kir= Drink.new(
       name:"Kir Royale",
       description: "Cava y licor de cassís",
       price: "4",
       aperitive: true,
       name_cat:"Kir Royale",
       name_fr:"Kir Royale",
       name_en:"Kir Royale",
       description_cat:"Cava y licor de cassís",
       description_fr:"Cava y licor de cassís",
       description_en:"Cava y licor de cassís",
)

kir.menu_id = aperitivo.id
kir.save
p kir

tinto_verano= Drink.new(
       name:"Tinto de verano",
       price: "3,00",
       aperitive: true,
       name_cat:"Tinto de verano",
       name_fr:"Tinto de verano",
       name_en:"Tinto de verano"
)

tinto_verano.menu_id = aperitivo.id
tinto_verano.save
p tinto_verano

vermut= Drink.new(
       name:"Vermut artesanal",
       price: "2,90",
       aperitive: true,
       name_cat:"Vermut artesanal",
       name_fr:"Vermut artesanal",
       name_en:"Vermut artesanal"
)

vermut.menu_id = aperitivo.id
vermut.save
p vermut

copa_sangria= Drink.new(
       name:"Copa de sangría",
       description: "Copa de sangría de vino tinto",
       price: "3,90",
       aperitive: true,
       name_cat:"Copa de sangria",
       name_fr:"Verre de sangria",
       name_en:"Glass of sangria",
       description_cat:"Copa de sangria de vi negre",
       description_fr:"Verre de vin rouge sangria",
       description_en:"Glass of red wine sangria",
)

copa_sangria.menu_id = aperitivo.id
copa_sangria.save
p copa_sangria

medio_sangria= Drink.new(
       name:"Jarra de 1/2 L de sangría",
       description: "Jarra de sangría de vino tinto",
       price: "7,50",
       aperitive: true,
       name_cat:"Gerra de 1/2 L de sangria",
       name_fr:"Cruche de sangria de 1/2 L",
       name_en:"Jar of sangria 1/2 L",
       description_cat:"Gerra de sangria de vi negre",
       description_fr:"Cruche de sangria au vin rouge",
       description_en:"Jar of red wine sangria",
       
)

medio_sangria.menu_id = aperitivo.id
medio_sangria.save
p medio_sangria

jarra_sangria= Drink.new(
       name:"Jarra de 1,5 L de sangría",
       description: "Jarra de sangría de vino tinto",
       price: "12,90",
       aperitive: true,
       name_cat:"Gerra de 1,5 L de sangria",
       name_fr:"Cruche de sangria de 1,5 L",
       name_en:"Jar of sangria 1,5 L",
       description_cat:"Gerra de sangria de vi negre",
       description_fr:"Cruche de sangria au vin rouge",
       description_en:"Jar of red wine sangria",
)

jarra_sangria.menu_id = aperitivo.id
jarra_sangria.save
p jarra_sangria

sangria_cava= Drink.new(
       name:"Jarra de 1/2 L de sangría de cava",
       description: "Sangría de cava, vermuth blanco, zumo, frutas y menta",
       price: "12,00",
       aperitive: true,
       name_cat:"Gerra de 1/2 L de sangria de cava",
       name_fr:"Cruche de sangria au cava de 1/2 L",
       name_en:"Jar of cava sangria 1/2 L",
       description_cat:"Sangria de cava, vermut blanc, suc, fruites i menta",
       description_fr:"Sangria au cava, vermouth blanc, jus, fruits et menthe",
       description_en:"Cava sangria, white vermouth, juice, fruits and mint",
)

sangria_cava.menu_id = aperitivo.id
sangria_cava.save
p sangria_cava

big_cava_sangria= Drink.new(
       name:"Jarra de 1,5 L de sangría de cava",
       description: "Sangría de cava, vermuth blanco, zumo, frutas y menta",
       price: "18,50",
       aperitive: true,
       name_cat:"Gerra de 1,5 L de sangria de cava",
       name_fr:"Cruche de sangria au cava de 1,5 L de cava",
       name_en:"Jar of cava sangria 1,5 L",
       description_cat:"Sangria de cava, vermut blanc, suc, fruites i menta",
       description_fr:"Sangria au cava, vermouth blanc, jus, fruits et menthe",
       description_en:"Cava sangria, white vermouth, juice, fruits and mint",
)

big_cava_sangria.menu_id = aperitivo.id
big_cava_sangria.save
p big_cava_sangria

seagrams= Drink.new(
       name:"Seagrams",
       price: "7,00",
       gin: true,
       name_cat:"Seagrams",
       name_fr:"Seagrams",
       name_en:"Seagrams"
)

seagrams.menu_id = aperitivo.id
seagrams.save
p seagrams

tanqueray= Drink.new(
       name:"Tanqueray",
       price: "7,00",
       gin: true,
       name_cat:"Tanqueray",
       name_fr:"Tanqueray",
       name_en:"Tanqueray"
)

tanqueray.menu_id = aperitivo.id
tanqueray.save
p tanqueray

ampersand= Drink.new(
       name:"Ampersand",
       price: "7,00",
       gin: true,
       name_cat:"Ampersand",
       name_fr:"Ampersand",
       name_en:"Ampersand"
)

ampersand.menu_id = aperitivo.id
ampersand.save
p ampersand

bombay= Drink.new(
       name:"Bombay Sapphire",
       price: "9,00",
       gin: true,
       name_cat:"Bombay Sapphire",
       name_fr:"Bombay Sapphire",
       name_en:"Bombay Sapphire"
)

bombay.menu_id = aperitivo.id
bombay.save
p bombay

citadelle= Drink.new(
       name:"Citadelle",
       price: "9,00",
       gin: true,
       name_cat:"Citadelle",
       name_fr:"Citadelle",
       name_en:"Citadelle"
)

citadelle.menu_id = aperitivo.id
citadelle.save
p citadelle

puerto= Drink.new(
       name:"Puerto de Indias",
       price: "9,00",
       gin: true,
       name_cat:"Puerto de Indias",
       name_fr:"Puerto de Indias",
       name_en:"Puerto de Indias"
)

puerto.menu_id = aperitivo.id
puerto.save
p puerto

hendriks= Drink.new(
       name:"Hendricks",
       price: "11,00",
       gin: true,
       name_cat:"Hendricks",
       name_fr:"Hendricks",
       name_en:"Hendricks"
)

hendriks.menu_id = aperitivo.id
hendriks.save
p hendriks

london= Drink.new(
       name:"London nº3",
       price: "11,00",
       gin: true,
       name_cat:"London nº3",
       name_fr:"London nº3",
       name_en:"London nº3"
)

london.menu_id = aperitivo.id
london.save
p london

mare= Drink.new(
       name:"Gin Mare",
       price: "11,00",
       gin: true,
       name_cat:"Gin Mare",
       name_fr:"Gin Mare",
       name_en:"Gin Mare"
)

mare.menu_id = aperitivo.id
mare.save
p mare

moskovskaya= Drink.new(
       name:"Moskovskaya",
      price: "7,00",
       vodka: true,
       name_cat:"Moskovskaya",
       name_fr:"Moskovskaya",
       name_en:"Moskovskaya"
)

moskovskaya.menu_id = aperitivo.id
moskovskaya.save
p moskovskaya

absolut= Drink.new(
       name:"Absolut",
       price: "9,00",
       vodka: true,
       name_cat:"Absolut",
       name_fr:"Absolut",
       name_en:"Absolut"
)

absolut.menu_id = aperitivo.id
absolut.save
p absolut

santa_teresa= Drink.new(
       name:"Santa Teresa",
       price: "7,00",
       rum: true,
       name_cat:"Santa Teresa",
       name_fr:"Santa Teresa",
       name_en:"Santa Teresa"
)

santa_teresa.menu_id = aperitivo.id
santa_teresa.save
p santa_teresa

cacique= Drink.new(
       name:"Cacique",
       price: "7,00",
       rum: true,
       name_cat:"Cacique",
       name_fr:"Cacique",
       name_en:"Cacique"
)

cacique.menu_id = aperitivo.id
cacique.save
p cacique

havana= Drink.new(
       name:"Havana 7",
       price: "9,00",
       rum: true,
       name_cat:"Havana 7",
       name_fr:"Havana 7",
       name_en:"Havana 7"
)

havana.menu_id = aperitivo.id
havana.save
p havana

bacardi= Drink.new(
       name:"Bacardi",
       price: "7,00",
       rum: true,
       name_cat:"Bacardi",
       name_fr:"Bacardi",
       name_en:"Bacardi"
)

bacardi.menu_id = aperitivo.id
bacardi.save
p bacardi

cutty= Drink.new(
       name:"Cutty Sark",
       price: "7,00",
       whiskey: true,
       name_cat:"Cutty Sark",
       name_fr:"Cutty Sark",
       name_en:"Cutty Sark"
)

cutty.menu_id = aperitivo.id
cutty.save
p cutty

jb= Drink.new(
       name:"J & B",
       price: "7,00",
       whiskey: true,
       name_cat:"J & B",
       name_fr:"J & B",
       name_en:"J & B"
)

jb.menu_id = aperitivo.id
jb.save
p jb

jim= Drink.new(
       name:"Jim Beam",
       price: "7,00",
       whiskey: true,
       name_cat:"Jim Beam",
       name_fr:"Jim Beam",
       name_en:"Jim Beam"
)

jim.menu_id = aperitivo.id
jim.save
p jim

ballentines= Drink.new(
       name:"Ballentines",
       price: "7,00",
       whiskey: true,
       name_cat:"Ballentines",
       name_fr:"Ballentines",
       name_en:"Ballentines"
)

ballentines.menu_id = aperitivo.id
ballentines.save
p ballentines

jack_daniels= Drink.new(
       name:"Jack Daniel's",
       price: "9,00",
       whiskey: true,
       name_cat:"Jack Daniel's",
       name_fr:"Jack Daniel's",
       name_en:"Jack Daniel's"
)

jack_daniels.menu_id = aperitivo.id
jack_daniels.save
p jack_daniels



cardhu= Drink.new(
       name:"Cardhu",
       price: "11,00",
       whiskey: true,
       name_cat:"Cardhu",
       name_fr:"Cardhu",
       name_en:"Cardhu"
)

cardhu.menu_id = aperitivo.id
cardhu.save
p cardhu

p "Drinks created..."

p "Seeds completed!"