
/* =========================================================
   CONFIGURAÇÃO DA LOJA — edite só este bloco
   ========================================================= */
const CONFIG = {
  whatsapp: "5563900000000",          // DDI + DDD + número, só dígitos. Ex.: 5563999998888
  whatsappExibir: "(63) 9 0000-0000",  // como o número aparece no site
  chavePix: "[SUA CHAVE PIX]",              // sua chave Pix (CNPJ, telefone, e-mail ou aleatória)
  nomePix: "Black Distribuidora",
  pedidoMinimo: 20,            // em reais
  abre: "08:00",                 // horário de abertura (HH:MM)
  fecha: "23:00",               // horário de fechamento (HH:MM)
  tempoEntrega: "30 a 50 min",        // ex.: "30 a 50 min"
  endereco: "[Rua, número, bairro] · [Cidade] – TO",
  cnpj: "[00.000.000/0000-00]",
  bairros: [["Centro", 6], ["Setor Norte", 8], ["Setor Sul", 8], ["Outros bairros", 10]]              // [nome, taxa]
};
/* ========================================================= */

const CATALOG = [{"id": "lata", "img": "lata", "label": "Cervejas lata", "items": [["Cerveja Antarctica lata", "269 ml", 3.5], ["Cerveja Amstel lata", "269 ml", 4], ["Cerveja Original lata", "269 ml", 4], ["Cerveja Heineken lata", "269 ml", 5], ["Cerveja Skol lata", "269 ml", 3.5]]}, {"id": "caixa", "img": "caixa", "label": "Caixas de cerveja", "items": [["Antarctica caixa", "15 latas de 269 ml", 43], ["Brahma Chopp caixa", "Caixa", 43], ["Budweiser caixa", "Caixa", 47], ["Heineken caixa", "8 latas de 269 ml", 35], ["Heineken caixa long neck", "330 ml", 45], ["Amstel caixa", "Latas de 269 ml", 38], ["Original caixa", "Latas de 269 ml", 52], ["Skol caixa", "Latas de 269 ml", 43]]}, {"id": "longneck", "img": "longneck", "label": "Long neck e ice", "items": [["Beats GT", "Long neck 269 ml", 9], ["Beats Senses", "Long neck 269 ml", 9], ["Ice Balada 51", "275 ml", 7], ["Ice de Maracujá 51", "275 ml", 9.5], ["51 Ice Limão", "275 ml", 7], ["Ice Fruit Mix 51 Morango e Laranja", "275 ml", 7], ["Budweiser long neck", "330 ml", 7], ["Eisenbahn Pilsen Puro Malte", "Long neck 355 ml", 7], ["Corona Extra", "Long neck 330 ml", 8], ["Heineken long neck", "250 ml", 6.5], ["Heineken long neck", "330 ml", 8], ["Império Lager", "Long neck 275 ml", 6.5], ["Stella Artois Puro Malte", "330 ml", 7], ["Stella Artois Pure Gold sem glúten", "Long neck 330 ml", 8], ["Spaten Puro Malte", "355 ml", 7], ["Budweiser Zero Álcool", "330 ml", 7], ["Corona Zero Álcool", "Long neck 330 ml", 8], ["Heineken Zero", "330 ml", 8], ["Mansão Maromba Gin + Melancia", "1 L", 18]]}, {"id": "whisky", "img": "whisky", "label": "Whisky", "items": [["Ballantine’s", "1 L", 75], ["Blue Label", "Garrafa", 1100], ["Buchanan’s", "1 L", 160], ["Cavalo Branco", "1 L", 75], ["Chivas Regal", "1 L", 130], ["Gold Label", "750 ml", 235], ["Jack Daniel’s Maçã", "Garrafa", 135], ["Jack Daniel’s Tradicional", "1 L", 135], ["Old Parr", "Garrafa", 135], ["Red Label", "1 L", 85], ["Royal Salute", "Garrafa", 1000]]}, {"id": "gin", "img": "gin", "label": "Gin", "items": [["Gin Intencion", "Garrafa", 35], ["Gin Invictus Maçã Verde", "Garrafa", 25], ["Gin Invictus Melancia", "Garrafa", 25], ["Gin Invictus Morango com Pêssego", "Garrafa", 25], ["Gin Invictus Tradicional", "Garrafa", 25], ["Gin Invictus Tropical", "Garrafa", 25], ["Gin Rocks Limão Siciliano", "Garrafa", 36], ["Gin Rocks Melancia", "Garrafa", 36], ["Gin Rocks Morango", "Garrafa", 36], ["Gin Rocks Tradicional", "Garrafa", 36], ["Gordon’s", "Garrafa", 65], ["Tanqueray", "Garrafa", 95]]}, {"id": "vodka", "img": "garrafa", "label": "Vodka", "items": [["Absolut Raspberry", "Garrafa", 80], ["Absolut", "Garrafa", 100], ["Ignite", "Garrafa", 110], ["Skyy", "Garrafa", 50], ["Smirnoff", "Garrafa", 38]]}, {"id": "cachaca", "img": "garrafa", "label": "Cachaça e outros", "items": [["Bacardí Limão e Hortelã", "Garrafa", 50], ["Campari", "Garrafa", 54], ["Dullon", "Garrafa", 12], ["Paratudo", "Garrafa", 17], ["Pinga 51", "Garrafa", 16], ["Presidente", "Garrafa", 20], ["São João da Barra", "Garrafa", 25], ["Velho Barreiro", "Garrafa", 18], ["Ypióca Ouro", "Garrafa", 24]]}, {"id": "vinho", "img": "vinho", "label": "Vinhos", "items": [["Norton Malbec D.O.C", "Tinto argentino 750 ml", 70], ["Pérgola Tinto Suave", "1 L", 27], ["Mioranza Tinto Suave", "750 ml", 18]]}, {"id": "energetico", "img": "energetico", "label": "Energéticos", "items": [["Baly Tradicional", "Lata 473 ml", 10], ["Baly Maçã Verde", "Lata 473 ml", 10], ["Baly Açaí", "Lata 473 ml", 10], ["Baly Coco e Açaí", "Lata 473 ml", 10], ["Baly Melancia", "Lata 473 ml", 10], ["Baly Morango e Pêssego sem açúcar", "Lata 473 ml", 10], ["Baly Tradicional", "Lata 250 ml", 7], ["Baly Coco e Açaí", "Lata 250 ml", 7], ["Baly Cola", "Lata 250 ml", 7], ["Baly Melancia", "Lata 250 ml", 7], ["Red Bull", "Lata 250 ml", 11], ["Red Bull Sem Açúcar", "Lata 250 ml", 11], ["Red Bull Cereja e Frutas Silvestres", "Lata 250 ml", 11], ["Red Bull Melancia", "Lata 250 ml", 11], ["Monster Ultra Watermelon Zero", "Lata 473 ml", 10], ["Monster Ultra Paradise", "Lata 473 ml", 11], ["Monster Mango Loco", "Lata", 11], ["Mister Hemp Bomba Original", "Lata 473 ml", 11], ["Extra Power", "Lata 270 ml", 7.5], ["Extra Power", "Garrafa 2 L", 18]]}, {"id": "refri2l", "img": "pet", "label": "Refrigerante 2 L", "items": [["Coca-Cola Original", "2 L", 12.9], ["Coca-Cola Sem Açúcar", "2 L", 13.5], ["Guaraná Antarctica", "2 L", 10], ["Fanta Laranja", "2 L", 10.5], ["Pepsi", "2 L", 10], ["Sukita Laranja", "2 L", 8], ["Sukita Tubaína", "2 L", 8], ["Soda Limonada Antarctica", "2 L", 8]]}, {"id": "refrilata", "img": "lata", "label": "Refrigerante lata", "items": [["Coca-Cola lata", "350 ml", 4.5], ["Pepsi lata", "350 ml", 4], ["Sukita Laranja lata", "350 ml", 4], ["Guaraná Antarctica lata", "269 ml", 3], ["Guaraná Antarctica lata", "350 ml", 4]]}, {"id": "sucos", "img": "suco", "label": "Sucos e água de coco", "items": [["Néctar Nutri Néctar Maracujá", "Caixa 1 L", 7.5], ["Néctar Nutri Néctar Abacaxi", "Caixa 1 L", 7.5], ["Néctar Nutri Néctar Caju", "Caixa 1 L", 7.5], ["Néctar Nutri Néctar Morango", "Caixa 1 L", 7.5], ["Néctar La Fruit Uva", "Caixa 1 L", 10], ["Água de coco Ducoco", "1 L", 12], ["Água de coco Natucoco Natural", "Unidade", 8]]}, {"id": "cigarros", "img": "cigarro", "label": "Cigarros", "smoke": true, "items": [["Carlton Dunhill", "Maço", 18], ["Lucky Strike", "Maço", 18], ["Rothmans Azul", "Maço", 14], ["Rothmans Prata", "Maço", 14], ["Rothmans Vermelho", "Maço", 14]]}, {"id": "palheiros", "img": "cigarro", "label": "Palheiros", "smoke": true, "items": [["Palheiro JC Menta", "Caixa com 10", 12], ["Palheiro JC Uva", "Caixa com 10", 12], ["Palheiro Paulistinha Tradicional", "Caixa com 20", 32], ["Palheiro Piracanjuba", "Caixa com 20", 22], ["Palheiro Santropez", "Caixa com 20", 30], ["Palheiro Terra Tombada Uva", "Unidade", 1], ["Terra Tombada Blue Ice", "Caixa com 10", 10], ["Terra Tombada Cereja", "Caixa com 10", 10], ["Terra Tombada Menta", "Caixa com 10", 10], ["Terra Tombada Menta", "Caixa com 20", 16], ["Terra Tombada Tradicional", "Caixa com 10", 10], ["Terra Tombada Uva", "Caixa com 10", 10]]}, {"id": "seda", "img": "seda", "label": "Seda e blunt", "smoke": true, "items": [["Blunt King Chocolate", "Unidade", 12], ["Blunt King Maçã Verde", "Unidade", 12], ["Blunt King Morango", "Unidade", 12], ["Blunt King Uva", "Unidade", 12], ["Blunt Melancia", "Unidade", 12], ["Seda Papelito Bandeja", "Unidade", 10], ["Seda Papelito Brown Longa", "130 x 44 mm", 6], ["Seda Smoking Deluxe King Size", "110 x 44 mm", 12], ["Zomo Alfafa", "Unidade", 5]]}, {"id": "essencias", "img": "narguile", "label": "Essências e narguile", "smoke": true, "items": [["Alumínio", "Unidade", 1], ["Carvão de coco", "Unidade", 1], ["Essência Nay Banana Melon", "Pacote", 13], ["Essência Nay Bubble Grape", "Pacote", 13], ["Essência Nay Cherry Mint", "Pacote", 13], ["Essência Nay Green Apple Mint", "Pacote", 13], ["Essência Nay Lemon Mint", "Pacote", 13], ["Essência Nay Manga Banana", "Pacote", 13], ["Essência Nay Melancia", "Pacote", 13], ["Essência Nay Melon Blend", "Pacote", 13], ["Essência Nay Mint", "Pacote", 13], ["Essência Nay Red Blend", "Pacote", 13], ["Essência Nay Strawberry Blast", "Pacote", 13], ["Essência Oni Icy Mint", "Pacote", 13], ["Essência Onix Apple", "Pacote", 13], ["Essência Onix Banana", "Pacote", 13], ["Essência Onix Cherry Orange", "Pacote", 13], ["Essência Onix Chiclete Canela", "Pacote", 13], ["Essência Onix Danon", "Pacote", 13], ["Essência Onix França", "Pacote", 13], ["Essência Onix Grape", "Pacote", 13], ["Essência Onix Itália Uva Roxa", "Pacote", 13], ["Essência Onix Melancia", "Pacote", 13], ["Essência Onix Mint", "Pacote", 13], ["Essência Sense Banana", "Pacote", 13], ["Essência Sense Candy Strawberry Ice", "Pacote", 13], ["Essência Sense Hortelã Ice", "Pacote", 13], ["Essência Sense Kiwi e Melão Ice", "Pacote", 13], ["Essência Sense Maracujá Ice", "Pacote", 13], ["Essência Sense Tutti Frutti Ice", "Pacote", 13], ["Essência ZGY Berry", "Pacote", 13], ["Essência ZGY Cherry", "Pacote", 13], ["Essência ZGY Duas Goiabas", "Pacote", 13], ["Essência ZGY Fresh 66", "Pacote", 13], ["Essência ZGY Fresh Melon", "Pacote", 13], ["Essência ZGY Frutas Roxas", "Pacote", 13], ["Essência ZGY Frutas Verdes", "Pacote", 13], ["Essência ZGY Frutti", "Pacote", 13], ["Essência ZGY Manga Tropical", "Pacote", 13], ["Essência ZGY Sorvete de Limão", "Pacote", 13], ["Essência ZGY Tropical", "Pacote", 13], ["Essência ZGY Watermelon Bomb", "Pacote", 13], ["Essência Zomo Abacaxi", "Pacote", 11], ["Essência Zomo Cereja", "Pacote", 11], ["Essência Zomo Hype Mint", "Pacote", 11], ["Essência Zomo Max Chiclete Tutti Frutti", "Pacote", 11], ["Essência Zomo Max Uva", "Pacote", 11], ["Essência Zomo Mint", "Pacote", 11], ["Essência Zomo Strong Mint", "Pacote", 11], ["Essência Zomo Strong Orange", "Pacote", 11], ["Essência Zomo Swiss Alps", "Pacote", 11]]}, {"id": "erva", "img": "folha", "label": "Erva para tereré", "items": [["Erva Redneck", "Pacote", 24], ["Erva Tereré Generalmint", "Pacote", 23], ["Erva Trots Lima Caipira", "Pacote", 26], ["Erva Trots Menta e Limão", "Pacote", 26], ["Erva Trots Menta Stronger", "Pacote", 26], ["Erva Trots Sabores", "Pacote", 26]]}, {"id": "chocolates", "img": "chocolate", "label": "Chocolates", "items": [["Barra de Cereal Trio Protein Chocolate", "33 g", 10], ["Lacta Diamante Negro", "80 g", 10], ["Lacta Intense Meio Amargo 40% Cacau", "85 g", 10], ["Chocolate 5 Star", "40 g", 3.5], ["M&M’s ao Leite", "132 g", 15], ["M&M’s Crispy", "120 g", 15], ["Rocks Ovomaltine", "40 g", 6], ["Nestlé Alpino ao Leite", "85 g", 10], ["Nestlé Classic Meio Amargo", "80 g", 10], ["KitKat ao Leite", "41,5 g", 5], ["KitKat Dark", "41,5 g", 5], ["Ovomaltine Hershey’s", "77 g", 10], ["Snickers", "45 g", 4.5], ["Wafer Peccin Trento Massimo Cookie", "30 g", 3]]}, {"id": "salgadinhos", "img": "salgadinho", "label": "Salgadinhos", "items": [["Batata Lisa Rústica Pratic Leve", "80 g", 6], ["Batata Lisa Rústica Pratic Leve com Ketchup", "80 g", 6], ["Batata Ondulada Pratic Leve Tradicional", "40 g", 4], ["Cheetos Lua Parmesão", "35 g", 3.5], ["Cheetos Onda Requeijão", "40 g", 3.5], ["Micos Pizza", "41 g", 3], ["Micos Galinha", "41 g", 3], ["Micos Queijo", "45 g", 3], ["Micos Requeijão", "45 g", 3], ["Skiny Original", "35 g", 3.5]]}, {"id": "balas", "img": "bala", "label": "Balas e chicletes", "items": [["Halls Cereja", "28 g", 2], ["Halls Extra Forte", "27,5 g", 2], ["Halls Melancia", "28 g", 2], ["Halls Menta", "28 g", 2], ["Halls Morango", "28 g", 2], ["Halls Uva Verde", "28 g", 2], ["Halls Mentol", "28 g", 2], ["Trident 21s Tutti-Frutti", "Unidade", 3], ["Trident Canela", "8 g", 3], ["Trident Hortelã", "8 g", 3], ["Trident Menta", "8 g", 3], ["Trident Morango", "8 g", 3], ["Trident Melancia", "8 g", 3], ["Trident Menta", "25,2 g", 6], ["Trident Melancia", "25,2 g · 14 unidades", 6], ["Trident Max Hortelã Fresca", "16 g · 5 unidades", 4], ["Trident Max Menta Blueberry", "16,5 g", 4], ["Trident Xsenses Cereja Ice", "8 g", 3], ["Trident Xsenses Intense", "8 g", 3], ["Trident Xsenses Acid Blueberry", "8 g · 5 unidades", 3], ["Trident Xsenses Melancia Mint", "54 g", 10], ["Trident Xsenses Morango Lime", "54 g", 10], ["Trident Xsenses Peppermint", "54 g", 10], ["Trident Xsenses Spearmint", "54 g", 10], ["Mentos Pure Fresh Wintergreen", "56 g · 28 unidades", 13], ["Mentos Pure White Mint", "56 g · 28 unidades", 13], ["Mentos Up2u Menta e Tutti-Frutti", "56 g · 28 unidades", 13]]}, {"id": "miojo", "img": "miojo", "label": "Macarrão instantâneo", "items": [["Cup Noodles Galinha Caipira", "69 g", 6], ["Cup Noodles Carne Defumada", "69 g", 6], ["Miojo Lámen Galinha Caipira", "85 g", 3], ["Miojo Lámen Hot Carne Desfiada", "85 g", 3]]}];
const ICONS = {"miojo": "<path d=\"M3 11h18a9 9 0 0 1-18 0z\"></path><path d=\"M7 11c0-2 2-2 2-4M11 11c0-2 2-2 2-4M15 11c0-2 2-2 2-4\"></path><path d=\"M14 2l6 8\"></path>", "longneck": "<path d=\"M10.5 2h3v4l1.5 3v12a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1V9l1.5-3z\"></path><path d=\"M9 13h6\"></path>", "seda": "<path d=\"M4 6h16v12H4z\"></path><path d=\"M4 9h16\"></path><path d=\"M8 13h8M8 15.5h5\"></path>", "chocolate": "<rect x=\"5\" y=\"3\" width=\"14\" height=\"18\" rx=\"1.5\"></rect><path d=\"M5 9h14M5 15h14M12 3v18\"></path>", "lata": "<path d=\"M7 5h10l-1 2v12l1 2H7l1-2V7z\"></path><path d=\"M8 9h8M8 17h8\"></path><path d=\"M10 3.5h4\"></path>", "cigarro": "<rect x=\"2\" y=\"13\" width=\"16\" height=\"4\" rx=\"1\"></rect><path d=\"M14 13v4\"></path><path d=\"M20 13v4M22 12v6\"></path><path d=\"M15 10c0-2 2-2 2-4s-2-2-2-4\"></path>", "narguile": "<path d=\"M10 2h4v3h-4z\"></path><path d=\"M12 5v4\"></path><path d=\"M8 9h8l-1 3H9z\"></path><path d=\"M12 12v2\"></path><path d=\"M8 16a4 4 0 0 0 8 0 4 4 0 0 0-8 0z\"></path><path d=\"M16 16h3l2-3\"></path>", "vinho": "<path d=\"M7 3h10v5a5 5 0 0 1-10 0z\"></path><path d=\"M7.5 7h9\"></path><path d=\"M12 13v7M8 21h8\"></path>", "combo": "<rect x=\"3\" y=\"9\" width=\"18\" height=\"12\" rx=\"1\"></rect><path d=\"M3 13h18M12 9v12\"></path><path d=\"M12 9c-3 0-5-1.5-5-3s2-2 3-1 2 4 2 4zM12 9c3 0 5-1.5 5-3s-2-2-3-1-2 4-2 4z\"></path>", "suco": "<path d=\"M7 7l2-4h6l2 4v13a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1z\"></path><path d=\"M7 7h10\"></path><path d=\"M10 12h4v4h-4z\"></path>", "salgadinho": "<path d=\"M6 3h12l-1 3 1 3-1 3 1 3-1 3 1 3H6l1-3-1-3 1-3-1-3 1-3z\"></path><circle cx=\"12\" cy=\"12\" r=\"2.5\"></circle>", "caixa": "<path d=\"M3 9l9-4 9 4v9l-9 4-9-4z\"></path><path d=\"M3 9l9 4 9-4M12 13v9\"></path><path d=\"M7.5 7l9 4\"></path>", "bala": "<rect x=\"8\" y=\"9\" width=\"8\" height=\"6\" rx=\"3\"></rect><path d=\"M8 12L3 8v8zM16 12l5-4v8z\"></path>", "gin": "<path d=\"M6 3h12l-1 6a5 5 0 0 1-10 0z\"></path><path d=\"M12 14v6M8 21h8\"></path><circle cx=\"10\" cy=\"6\" r=\"1\"></circle>", "garrafa": "<path d=\"M10 2h4v5l2 2v12a1 1 0 0 1-1 1H9a1 1 0 0 1-1-1V9l2-2z\"></path><rect x=\"9.5\" y=\"12\" width=\"5\" height=\"5\" rx=\".5\"></rect>", "folha": "<path d=\"M5 19C5 10 11 4 20 4c0 9-6 15-15 15z\"></path><path d=\"M5 19L14 10\"></path>", "energetico": "<path d=\"M7 4h10l-.5 2v13l.5 1H7l.5-1V6z\"></path><path d=\"M13 8l-3 5h3l-1 4 3-5h-3z\"></path>", "whisky": "<path d=\"M5 6h14l-1.5 13a2 2 0 0 1-2 2h-7a2 2 0 0 1-2-2z\"></path><path d=\"M6 11h12\"></path><rect x=\"9\" y=\"13\" width=\"3.5\" height=\"3.5\" rx=\".5\"></rect><rect x=\"12.5\" y=\"15\" width=\"3\" height=\"3\" rx=\".5\"></rect>", "pet": "<path d=\"M10 2h4v2l2 3v4l-1 1 1 1v7a2 2 0 0 1-2 2h-4a2 2 0 0 1-2-2v-7l1-1-1-1V7l2-3z\"></path>"};
const ACOMP = ["4 gelos saborizados", "1 Extra Power 2 L", "4 copos personalizados"];
const COMBOS = [
  { id: "c-red", name: "Combo Red Label", price: 120, lines: ["Red Label"].concat(ACOMP), top: true },
  { id: "c-bal", name: "Combo Ballantine’s", price: 100, lines: ["Ballantine’s"].concat(ACOMP) },
  { id: "c-cav", name: "Combo Cavalo Branco", price: 100, lines: ["Cavalo Branco"].concat(ACOMP) },
  { id: "c-buc", name: "Combo Buchanan’s", price: 190, lines: ["Buchanan’s"].concat(ACOMP) },
  { id: "c-jack", name: "Combo Jack Daniel’s", price: 175, lines: ["Jack Daniel’s Tradicional", "Com acompanhamento"] },
  { id: "c-gin", name: "Combo Gin Invictus", price: 60, lines: ["Gin Invictus no sabor que você escolher", "Informe o sabor nas observações"] }
];
const FEATURED = ["caixa:0", "caixa:3", "c-red", "refri2l:0", "gin:5", "whisky:9", "energetico:10", "longneck:8"];

/* Índice de produtos */
const PRODUCTS = {};
CATALOG.forEach(c => c.items.forEach((r, i) => {
  PRODUCTS[c.id + ":" + i] = { id: c.id + ":" + i, name: r[0], unit: r[1], price: r[2], icon: c.img, cat: c.id };
}));
COMBOS.forEach(c => { PRODUCTS[c.id] = { id: c.id, name: c.name, unit: "Combo", price: c.price, icon: "combo", cat: "combos" }; });

const $ = s => document.querySelector(s);
const fmt = v => "R$ " + v.toFixed(2).replace(".", ",").replace(/\B(?=(\d{3})+(?!\d))/g, ".");
const esc = s => String(s).replace(/[&<>"]/g, ch => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;" }[ch]));
const icon = k => '<svg viewBox="0 0 24 24" fill="none" stroke="#0369A1" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">' + (ICONS[k] || ICONS.garrafa) + "</svg>";
const store = {
  get(k, d) { try { const v = localStorage.getItem(k); return v ? JSON.parse(v) : d; } catch (e) { return d; } },
  set(k, v) { try { localStorage.setItem(k, JSON.stringify(v)); } catch (e) {} }
};

let cart = store.get("black-cart", {});
Object.keys(cart).forEach(k => { if (!PRODUCTS[k] || !(cart[k] > 0)) delete cart[k]; });
let state = { cat: CATALOG[0].id, query: "", step: "cart", order: null };


/* Informações da loja */
function isOpen() {
  const toMin = t => { const [h, m] = t.split(":").map(Number); return h * 60 + (m || 0); };
  if (!/^\d{1,2}:\d{2}$/.test(CONFIG.abre) || !/^\d{1,2}:\d{2}$/.test(CONFIG.fecha)) return null;
  const now = new Date(); const n = now.getHours() * 60 + now.getMinutes();
  const a = toMin(CONFIG.abre), f = toMin(CONFIG.fecha);
  return a <= f ? (n >= a && n < f) : (n >= a || n < f);
}
function fillInfo() {
  const open = isOpen();
  if (open === null) { $("#status").hidden = true; }
  else { $("#status").classList.toggle("closed", !open); $("#status-txt").textContent = open ? "Aberto até " + CONFIG.fecha : "Fechado · abre " + CONFIG.abre; }
  $("#strip-min").textContent = "Pedido mínimo " + fmt(CONFIG.pedidoMinimo) + " · Proibido para menores de 18";
  if (CONFIG.tempoEntrega) { $("#fact-time").textContent = "Em " + CONFIG.tempoEntrega; }
  const fees = CONFIG.bairros.map(b => b[1]);
  if (fees.length) { const lo = Math.min(...fees), hi = Math.max(...fees); $("#fact-fee").textContent = lo === hi ? fmt(lo) + " em toda a cidade." : "De " + fmt(lo) + " a " + fmt(hi) + "."; }
  $("#f-whats").textContent = "WhatsApp: " + CONFIG.whatsappExibir;
  $("#f-hours").textContent = "Todos os dias, " + CONFIG.abre + " às " + CONFIG.fecha;
  $("#f-addr").textContent = CONFIG.endereco;
  $("#f-cnpj").textContent = "Black Distribuidora · CNPJ " + CONFIG.cnpj;
  $("#b2b-link").href = "https://wa.me/" + CONFIG.whatsapp + "?text=" + encodeURIComponent("Olá! Tenho um comércio e quero a tabela de revenda da Black Distribuidora.");
}

/* Navegação */
const NAV = [["combos", "Combos", true], ["lata", "Cervejas"], ["caixa", "Caixas"], ["whisky", "Whisky"], ["gin", "Gin"], ["vodka", "Vodka"], ["energetico", "Energéticos"], ["refri2l", "Refrigerantes"], ["cigarros", "Tabacaria"], ["essencias", "Essências"], ["chocolates", "Conveniência"], ["b2b", "Para empresas", true]];
$("#nav").innerHTML = NAV.map(n => '<button type="button" data-nav="' + n[0] + '"' + (n[2] ? ' class="hl"' : "") + ">" + n[1] + "</button>").join("");
$("#nav").addEventListener("click", e => {
  const b = e.target.closest("[data-nav]"); if (!b) return;
  const k = b.dataset.nav;
  if (k === "combos") { $("#combos").scrollIntoView(); return; }
  if (k === "b2b") { $("#negocio").scrollIntoView(); return; }
  state.cat = k; state.query = ""; $("#q").value = ""; renderMenu(); $("#cardapio").scrollIntoView();
});

/* Botão de compra */
function buyControl(id) {
  const q = cart[id] || 0;
  if (!q) return '<button type="button" class="btn btn-ice add" data-add="' + id + '">Adicionar</button>';
  return '<div class="stepper"><button type="button" data-dec="' + id + '" aria-label="Diminuir">−</button><output aria-live="polite">' + q + '</output><button type="button" data-inc="' + id + '" aria-label="Aumentar">+</button></div>';
}
function cardHTML(p) {
  return '<article class="card" data-card="' + p.id + '"><div class="pic">' + icon(p.icon) + '</div><div class="meta"><h3>' + esc(p.name) + '</h3><span class="unit">' + esc(p.unit) + '</span></div><span class="price">' + fmt(p.price) + '</span><div class="buy">' + buyControl(p.id) + "</div></article>";
}

function renderFeatured() { $("#featured").innerHTML = FEATURED.map(id => PRODUCTS[id]).filter(Boolean).map(cardHTML).join(""); }
function renderCombos() {
  $("#combo-list").innerHTML = COMBOS.map(c => '<article class="combo' + (c.top ? " top" : "") + '" data-card="' + c.id + '">' + (c.top ? '<span class="badge">Mais pedido</span>' : "") +
    '<div class="combo-head"><div class="pic">' + icon("combo") + '</div><h3 class="display">' + esc(c.name) + "</h3></div><ul>" + c.lines.map(l => "<li>" + esc(l) + "</li>").join("") +
    '</ul><div class="combo-foot"><span class="price">' + fmt(c.price) + '</span><div class="buy">' + buyControl(c.id) + "</div></div></article>").join("");
}
function renderChips() {
  $("#chips").innerHTML = CATALOG.map(c => '<button type="button" class="chip" data-cat="' + c.id + '" aria-pressed="' + (!state.query && c.id === state.cat) + '">' + esc(c.label) + "</button>").join("");
}
function renderMenu() {
  renderChips();
  const q = state.query.trim().toLowerCase();
  let list, title, smoke = false;
  if (q) {
    const terms = q.normalize("NFD").replace(/[̀-ͯ]/g, "").split(/\s+/);
    list = Object.values(PRODUCTS).filter(p => {
      const c = CATALOG.find(x => x.id === p.cat);
      const hay = (p.name + " " + p.unit + " " + (c ? c.label : "combo")).toLowerCase().normalize("NFD").replace(/[̀-ͯ]/g, "");
      return terms.every(t => hay.includes(t));
    });
    title = "Resultados para “" + state.query.trim() + "”";
  } else {
    const c = CATALOG.find(x => x.id === state.cat) || CATALOG[0];
    list = c.items.map((r, i) => PRODUCTS[c.id + ":" + i]);
    title = c.label; smoke = !!c.smoke;
  }
  $("#list-title").textContent = title;
  $("#list-count").textContent = list.length + (list.length === 1 ? " produto" : " produtos");
  $("#smoke").hidden = !smoke;
  $("#empty").hidden = list.length > 0;
  $("#products").innerHTML = list.map(cardHTML).join("");
}
$("#chips").addEventListener("click", e => {
  const b = e.target.closest("[data-cat]"); if (!b) return;
  state.cat = b.dataset.cat; state.query = ""; $("#q").value = ""; renderMenu();
});
let qTimer;
$("#q").addEventListener("input", e => {
  clearTimeout(qTimer);
  qTimer = setTimeout(() => { state.query = e.target.value; renderMenu(); if (state.query.trim()) $("#cardapio").scrollIntoView(); }, 180);
});

/* Carrinho */
function save() { store.set("black-cart", cart); }
function counts() {
  let n = 0, sub = 0;
  Object.keys(cart).forEach(k => { n += cart[k]; sub += cart[k] * PRODUCTS[k].price; });
  return { n, sub };
}
function refreshBuy(id) {
  document.querySelectorAll('[data-card="' + id + '"] .buy').forEach(el => { el.innerHTML = buyControl(id); });
}
function updateBadges() {
  const { n, sub } = counts();
  $("#cart-count").textContent = n;
  $("#cart-total").textContent = fmt(sub);
  $("#cartbar").hidden = n === 0;
  document.body.classList.toggle("has-bar", n > 0);
  $("#cartbar-txt").textContent = n + (n === 1 ? " item · " : " itens · ") + fmt(sub);
}
function setQty(id, q) {
  if (q <= 0) delete cart[id]; else cart[id] = q;
  save(); refreshBuy(id); updateBadges();
  if (!$("#drawer").hidden && state.step === "cart") renderDrawer();
}
let toastT;
function toast(msg) {
  const t = $("#toast"); t.textContent = msg; t.hidden = false;
  clearTimeout(toastT); toastT = setTimeout(() => { t.hidden = true; }, 1800);
}
document.addEventListener("click", e => {
  const a = e.target.closest("[data-add]"), i = e.target.closest("[data-inc]"), d = e.target.closest("[data-dec]"), r = e.target.closest("[data-rm]");
  if (a) { setQty(a.dataset.add, 1); toast(PRODUCTS[a.dataset.add].name + " no carrinho"); }
  else if (i) setQty(i.dataset.inc, (cart[i.dataset.inc] || 0) + 1);
  else if (d) setQty(d.dataset.dec, (cart[d.dataset.dec] || 0) - 1);
  else if (r) setQty(r.dataset.rm, 0);
});

/* Gaveta */
let lastFocus = null;
function openDrawer() {
  lastFocus = document.activeElement;
  if (state.step === "done") state.step = "cart";
  $("#scrim").hidden = false; $("#drawer").hidden = false; document.body.style.overflow = "hidden";
  renderDrawer(); $("#close-cart").focus();
}
function closeDrawer() {
  $("#scrim").hidden = true; $("#drawer").hidden = true; document.body.style.overflow = "";
  if (lastFocus) lastFocus.focus();
}
$("#open-cart").addEventListener("click", openDrawer);
$("#cartbar-btn").addEventListener("click", openDrawer);
$("#close-cart").addEventListener("click", closeDrawer);
$("#scrim").addEventListener("click", closeDrawer);
document.addEventListener("keydown", e => { if (e.key === "Escape" && !$("#drawer").hidden) closeDrawer(); });

let form = store.get("black-form", { nome: "", fone: "", rua: "", bairro: "", ref: "", pag: "pix", obs: "" });
function feeFor(b) { const f = CONFIG.bairros.find(x => x[0] === b); return f ? f[1] : 0; }

function renderDrawer() {
  const body = $("#drawer-body"), foot = $("#drawer-foot");
  const { n, sub } = counts();
  if (state.step === "cart") {
    $("#drawer-title").textContent = "Carrinho";
    if (!n) {
      body.innerHTML = '<p class="empty">Seu carrinho está vazio.</p>';
      foot.innerHTML = '<button type="button" class="btn btn-ice" id="go-menu">Ver cardápio</button>';
      $("#go-menu").onclick = () => { closeDrawer(); $("#cardapio").scrollIntoView(); };
      return;
    }
    body.innerHTML = Object.keys(cart).map(id => {
      const p = PRODUCTS[id];
      return '<div class="line"><div><h4>' + esc(p.name) + '</h4><span class="unit">' + esc(p.unit) + " · " + fmt(p.price) + '</span></div><strong class="price">' + fmt(p.price * cart[id]) +
        '</strong><div class="row"><div class="stepper"><button type="button" data-dec="' + id + '" aria-label="Diminuir">−</button><output>' + cart[id] + '</output><button type="button" data-inc="' + id + '" aria-label="Aumentar">+</button></div><button type="button" class="rm" data-rm="' + id + '">Remover</button></div></div>';
    }).join("");
    const short = sub < CONFIG.pedidoMinimo;
    foot.innerHTML = '<div class="sum"><span>Subtotal</span><strong>' + fmt(sub) + "</strong></div>" +
      (short ? '<p class="alert">Faltam ' + fmt(CONFIG.pedidoMinimo - sub) + " para o pedido mínimo de " + fmt(CONFIG.pedidoMinimo) + ".</p>" : "") +
      '<button type="button" class="btn btn-ice" id="to-checkout"' + (short ? " disabled" : "") + ">Continuar</button>";
    $("#to-checkout").onclick = () => { state.step = "checkout"; renderDrawer(); };
    return;
  }
  if (state.step === "checkout") {
    $("#drawer-title").textContent = "Entrega e pagamento";
    const opts = CONFIG.bairros.map(b => '<option value="' + esc(b[0]) + '"' + (form.bairro === b[0] ? " selected" : "") + ">" + esc(b[0]) + " · " + (b[1] ? fmt(b[1]) : "grátis") + "</option>").join("");
    body.innerHTML = '<form id="co" novalidate style="display:flex;flex-direction:column;gap:14px">' +
      '<div class="field"><label for="f-nome">Nome</label><input id="f-nome" name="nome" required autocomplete="name" value="' + esc(form.nome) + '"></div>' +
      '<div class="field"><label for="f-fone">WhatsApp</label><input id="f-fone" name="fone" type="tel" required inputmode="tel" autocomplete="tel" placeholder="(63) 9 0000-0000" value="' + esc(form.fone) + '"></div>' +
      '<div class="field"><label for="f-rua">Rua e número</label><input id="f-rua" name="rua" required autocomplete="street-address" value="' + esc(form.rua) + '"></div>' +
      '<div class="field"><label for="f-bairro">Bairro</label><select id="f-bairro" name="bairro" required><option value="">Escolha o bairro</option>' + opts + "</select></div>" +
      '<div class="field"><label for="f-ref">Complemento ou referência</label><input id="f-ref" name="ref" value="' + esc(form.ref) + '"></div>' +
      '<fieldset class="pay field"><legend>Pagamento</legend>' +
      '<label class="opt"><input type="radio" name="pag" value="pix"' + (form.pag !== "cartao" ? " checked" : "") + '><div><strong>Pix</strong><span>Você paga agora e o pedido já sai.</span></div></label>' +
      '<label class="opt"><input type="radio" name="pag" value="cartao"' + (form.pag === "cartao" ? " checked" : "") + '><div><strong>Cartão de crédito ou débito</strong><span>Enviamos o link de pagamento no seu WhatsApp.</span></div></label></fieldset>' +
      '<div class="field"><label for="f-obs">Observações</label><textarea id="f-obs" name="obs" placeholder="Ex.: sabor do gin, troco, ponto de referência">' + esc(form.obs) + "</textarea></div>" +
      '<label class="check"><input type="checkbox" id="f-18" required><span>Confirmo que tenho 18 anos ou mais e vou apresentar documento na entrega.</span></label>' +
      '<p class="alert" id="co-err" hidden></p></form>';
    const fee = feeFor(form.bairro);
    foot.innerHTML = '<div class="sum"><span>Subtotal</span><span>' + fmt(sub) + '</span></div><div class="sum"><span>Entrega</span><span id="fee">' + (form.bairro ? fmt(fee) : "Escolha o bairro") +
      '</span></div><div class="sum total"><span>Total</span><span id="tot">' + fmt(sub + fee) + '</span></div><div style="display:flex;gap:8px"><button type="button" class="btn btn-line" id="back">Voltar</button><button type="submit" form="co" class="btn btn-ice" style="flex:1">Fechar pedido</button></div>';
    const co = $("#co");
    co.addEventListener("input", () => {
      const fd = new FormData(co);
      form = { nome: fd.get("nome") || "", fone: fd.get("fone") || "", rua: fd.get("rua") || "", bairro: fd.get("bairro") || "", ref: fd.get("ref") || "", pag: fd.get("pag") || "pix", obs: fd.get("obs") || "" };
      store.set("black-form", form);
      const f = feeFor(form.bairro);
      $("#fee").textContent = form.bairro ? fmt(f) : "Escolha o bairro";
      $("#tot").textContent = fmt(sub + f);
    });
    $("#back").onclick = () => { state.step = "cart"; renderDrawer(); };
    co.addEventListener("submit", e => {
      e.preventDefault();
      const miss = [];
      if (!form.nome.trim()) miss.push("nome");
      if (form.fone.replace(/\D/g, "").length < 10) miss.push("WhatsApp com DDD");
      if (!form.rua.trim()) miss.push("rua e número");
      if (!form.bairro) miss.push("bairro");
      if (!$("#f-18").checked) miss.push("confirmação de 18 anos");
      if (miss.length) { const er = $("#co-err"); er.textContent = "Preencha: " + miss.join(", ") + "."; er.hidden = false; er.scrollIntoView({ block: "nearest" }); return; }
      const fee2 = feeFor(form.bairro);
      const code = "BLK" + Date.now().toString(36).toUpperCase().slice(-5);
      const items = Object.keys(cart).map(id => ({ q: cart[id], p: PRODUCTS[id] }));
      const lines = items.map(x => x.q + "x " + x.p.name + (x.p.unit && x.p.unit !== "Combo" ? " (" + x.p.unit + ")" : "") + " — " + fmt(x.q * x.p.price));
      const text = "*Pedido " + code + " · Black Distribuidora*\n\n" + lines.join("\n") +
        "\n\nSubtotal: " + fmt(sub) + "\nEntrega (" + form.bairro + "): " + fmt(fee2) + "\n*Total: " + fmt(sub + fee2) + "*" +
        "\n\nPagamento: " + (form.pag === "pix" ? "Pix" : "Cartão (enviar link)") +
        "\nNome: " + form.nome + "\nWhatsApp: " + form.fone + "\nEndereço: " + form.rua + " — " + form.bairro + (form.ref ? "\nReferência: " + form.ref : "") +
        (form.obs ? "\nObs.: " + form.obs : "") + "\n\nConfirmo que tenho 18 anos ou mais.";
      state.order = { code, total: sub + fee2, text, pag: form.pag };
      state.step = "done"; cart = {}; save(); updateBadges();
      Object.keys(PRODUCTS).forEach(refreshBuy);
      renderDrawer();
    });
    return;
  }
  /* Pedido fechado */
  const o = state.order;
  $("#drawer-title").textContent = "Pedido " + o.code;
  const wa = "https://wa.me/" + CONFIG.whatsapp + "?text=" + encodeURIComponent(o.text);
  body.innerHTML = '<div class="done-hero"><span class="eyebrow">Falta só um passo</span><span class="display">' + (o.pag === "pix" ? "Pague o Pix e envie o pedido" : "Envie o pedido no WhatsApp") + "</span>" +
    "<span>" + (o.pag === "pix" ? "Pague " + fmt(o.total) + " no Pix e mande o pedido com o comprovante. Pagamento confirmado, sua compra sai para entrega." : "Mande o pedido no WhatsApp. Você recebe o link do cartão e, pago, sua compra sai para entrega.") + "</span></div>" +
    (o.pag === "pix" ? '<div class="pix"><span class="eyebrow">Chave Pix · ' + esc(CONFIG.nomePix) + '</span><code id="pix-key">' + esc(CONFIG.chavePix) + '</code><span class="price" style="font-size:28px">' + fmt(o.total) + '</span><button type="button" class="btn btn-ink" id="copy-pix">Copiar chave Pix</button></div>' : "") +
    '<div class="field"><span class="eyebrow" style="color:var(--muted)">Seu pedido</span><pre class="summary" id="sum-text">' + esc(o.text) + "</pre></div>" +
    '<p style="margin:0;font-size:14px;color:var(--muted)">O botão abre o WhatsApp com o pedido pronto. Se não abrir, chame no ' + esc(CONFIG.whatsappExibir) + ' e cole o pedido.</p>';
  foot.innerHTML = '<a class="btn btn-ice" href="' + wa + '" target="_blank" rel="noopener">Enviar pedido no WhatsApp</a><button type="button" class="btn btn-line" id="copy-order">Copiar pedido</button>';
  const copy = (txt, el, ok) => {
    const done = () => toast(ok);
    if (navigator.clipboard && navigator.clipboard.writeText) navigator.clipboard.writeText(txt).then(done, () => selectText(el));
    else selectText(el);
  };
  const cp = $("#copy-pix"); if (cp) cp.onclick = () => copy(CONFIG.chavePix, $("#pix-key"), "Chave Pix copiada");
  $("#copy-order").onclick = () => copy(o.text, $("#sum-text"), "Pedido copiado");
}
function selectText(el) {
  const r = document.createRange(); r.selectNodeContents(el);
  const s = window.getSelection(); s.removeAllRanges(); s.addRange(r);
  toast("Texto selecionado. Copie com Ctrl+C ou segurando o dedo.");
}

fillInfo();
renderFeatured();
renderCombos();
renderMenu();
updateBadges();
