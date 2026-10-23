--====================================================
-- Black Distribuidora - Seed completo (21 categorias, 250 produtos)
--====================================================
-- Rodar depois do supabase.sql e do seed.sql.
-- Pode rodar mais de uma vez: não duplica nada.
-- Produto já cadastrado (mesmo nome e mesma unidade) não é alterado,
-- só vai para a categoria certa.
-- Atenção: produtos que não estão nesta lista são PAUSADOS (passo 5).
-- Depois de cadastrar produtos novos pelo painel, não rode este arquivo de novo.

begin;

-- 1) Categorias: cria as que faltam e acerta ícone, ordem e tabacaria
insert into public.categorias (nome, icone, ordem, ativo, tabacaria)
values
  ('Cervejas lata', 'lata', 1, true, false),
  ('Caixas de cerveja', 'caixa', 2, true, false),
  ('Long neck e ice', 'longneck', 3, true, false),
  ('Whisky', 'whisky', 4, true, false),
  ('Gin', 'gin', 5, true, false),
  ('Vodka', 'gin', 6, true, false),
  ('Cachaça e outros', 'whisky', 7, true, false),
  ('Vinhos', 'vinho', 8, true, false),
  ('Energéticos', 'lata', 9, true, false),
  ('Refrigerante 2 L', 'suco', 10, true, false),
  ('Refrigerante lata', 'lata', 11, true, false),
  ('Sucos e água de coco', 'suco', 12, true, false),
  ('Cigarros', 'cigarro', 13, true, true),
  ('Palheiros', 'cigarro', 14, true, true),
  ('Seda e blunt', 'seda', 15, true, true),
  ('Essências e narguile', 'seda', 16, true, true),
  ('Erva para tereré', 'suco', 17, true, false),
  ('Chocolates', 'chocolate', 18, true, false),
  ('Salgadinhos', 'chocolate', 19, true, false),
  ('Balas e chicletes', 'chocolate', 20, true, false),
  ('Macarrão instantâneo', 'miojo', 21, true, false)
on conflict (nome) do update
set icone = excluded.icone,
    ordem = excluded.ordem,
    tabacaria = excluded.tabacaria,
    ativo = true;

-- 2) Lista completa dos produtos
create temp table _seed_produtos (categoria text, nome text, unidade text, preco numeric(12,2), ordem integer) on commit drop;

insert into _seed_produtos (categoria, nome, unidade, preco, ordem)
values
  ('Cervejas lata', 'Cerveja Antarctica lata', '269 ml', 3.50, 1),
  ('Cervejas lata', 'Cerveja Amstel lata', '269 ml', 4.00, 2),
  ('Cervejas lata', 'Cerveja Original lata', '269 ml', 4.00, 3),
  ('Cervejas lata', 'Cerveja Heineken lata', '269 ml', 5.00, 4),
  ('Cervejas lata', 'Cerveja Skol lata', '269 ml', 3.50, 5),
  ('Caixas de cerveja', 'Antarctica caixa', '15 latas de 269 ml', 43.00, 6),
  ('Caixas de cerveja', 'Brahma Chopp caixa', 'Caixa', 43.00, 7),
  ('Caixas de cerveja', 'Budweiser caixa', 'Caixa', 47.00, 8),
  ('Caixas de cerveja', 'Heineken caixa', '8 latas de 269 ml', 35.00, 9),
  ('Caixas de cerveja', 'Heineken caixa long neck', '330 ml', 45.00, 10),
  ('Caixas de cerveja', 'Amstel caixa', 'Latas de 269 ml', 38.00, 11),
  ('Caixas de cerveja', 'Original caixa', 'Latas de 269 ml', 52.00, 12),
  ('Caixas de cerveja', 'Skol caixa', 'Latas de 269 ml', 43.00, 13),
  ('Long neck e ice', 'Beats GT', 'Long neck 269 ml', 9.00, 14),
  ('Long neck e ice', 'Beats Senses', 'Long neck 269 ml', 9.00, 15),
  ('Long neck e ice', 'Ice Balada 51', '275 ml', 7.00, 16),
  ('Long neck e ice', 'Ice de Maracujá 51', '275 ml', 9.50, 17),
  ('Long neck e ice', '51 Ice Limão', '275 ml', 7.00, 18),
  ('Long neck e ice', 'Ice Fruit Mix 51 Morango e Laranja', '275 ml', 7.00, 19),
  ('Long neck e ice', 'Budweiser long neck', '330 ml', 7.00, 20),
  ('Long neck e ice', 'Eisenbahn Pilsen Puro Malte', 'Long neck 355 ml', 7.00, 21),
  ('Long neck e ice', 'Corona Extra', 'Long neck 330 ml', 8.00, 22),
  ('Long neck e ice', 'Heineken long neck', '250 ml', 6.50, 23),
  ('Long neck e ice', 'Heineken long neck', '330 ml', 8.00, 24),
  ('Long neck e ice', 'Império Lager', 'Long neck 275 ml', 6.50, 25),
  ('Long neck e ice', 'Stella Artois Puro Malte', '330 ml', 7.00, 26),
  ('Long neck e ice', 'Stella Artois Pure Gold sem glúten', 'Long neck 330 ml', 8.00, 27),
  ('Long neck e ice', 'Spaten Puro Malte', '355 ml', 7.00, 28),
  ('Long neck e ice', 'Budweiser Zero Álcool', '330 ml', 7.00, 29),
  ('Long neck e ice', 'Corona Zero Álcool', 'Long neck 330 ml', 8.00, 30),
  ('Long neck e ice', 'Heineken Zero', '330 ml', 8.00, 31),
  ('Long neck e ice', 'Mansão Maromba Gin + Melancia', '1 L', 18.00, 32),
  ('Whisky', 'Ballantine’s', '1 L', 75.00, 33),
  ('Whisky', 'Blue Label', 'Garrafa', 1100.00, 34),
  ('Whisky', 'Buchanan’s', '1 L', 160.00, 35),
  ('Whisky', 'Cavalo Branco', '1 L', 75.00, 36),
  ('Whisky', 'Chivas Regal', '1 L', 130.00, 37),
  ('Whisky', 'Gold Label', '750 ml', 235.00, 38),
  ('Whisky', 'Jack Daniel’s Maçã', 'Garrafa', 135.00, 39),
  ('Whisky', 'Jack Daniel’s Tradicional', '1 L', 135.00, 40),
  ('Whisky', 'Old Parr', 'Garrafa', 135.00, 41),
  ('Whisky', 'Red Label', '1 L', 85.00, 42),
  ('Whisky', 'Royal Salute', 'Garrafa', 1000.00, 43),
  ('Gin', 'Gin Intencion', 'Garrafa', 35.00, 44),
  ('Gin', 'Gin Invictus Maçã Verde', 'Garrafa', 25.00, 45),
  ('Gin', 'Gin Invictus Melancia', 'Garrafa', 25.00, 46),
  ('Gin', 'Gin Invictus Morango com Pêssego', 'Garrafa', 25.00, 47),
  ('Gin', 'Gin Invictus Tradicional', 'Garrafa', 25.00, 48),
  ('Gin', 'Gin Invictus Tropical', 'Garrafa', 25.00, 49),
  ('Gin', 'Gin Rocks Limão Siciliano', 'Garrafa', 36.00, 50),
  ('Gin', 'Gin Rocks Melancia', 'Garrafa', 36.00, 51),
  ('Gin', 'Gin Rocks Morango', 'Garrafa', 36.00, 52),
  ('Gin', 'Gin Rocks Tradicional', 'Garrafa', 36.00, 53),
  ('Gin', 'Gordon’s', 'Garrafa', 65.00, 54),
  ('Gin', 'Tanqueray', 'Garrafa', 95.00, 55),
  ('Vodka', 'Absolut Raspberry', 'Garrafa', 80.00, 56),
  ('Vodka', 'Absolut', 'Garrafa', 100.00, 57),
  ('Vodka', 'Ignite', 'Garrafa', 110.00, 58),
  ('Vodka', 'Skyy', 'Garrafa', 50.00, 59),
  ('Vodka', 'Smirnoff', 'Garrafa', 38.00, 60),
  ('Cachaça e outros', 'Bacardí Limão e Hortelã', 'Garrafa', 50.00, 61),
  ('Cachaça e outros', 'Campari', 'Garrafa', 54.00, 62),
  ('Cachaça e outros', 'Dullon', 'Garrafa', 12.00, 63),
  ('Cachaça e outros', 'Paratudo', 'Garrafa', 17.00, 64),
  ('Cachaça e outros', 'Pinga 51', 'Garrafa', 16.00, 65),
  ('Cachaça e outros', 'Presidente', 'Garrafa', 20.00, 66),
  ('Cachaça e outros', 'São João da Barra', 'Garrafa', 25.00, 67),
  ('Cachaça e outros', 'Velho Barreiro', 'Garrafa', 18.00, 68),
  ('Cachaça e outros', 'Ypióca Ouro', 'Garrafa', 24.00, 69),
  ('Vinhos', 'Norton Malbec D.O.C', 'Tinto argentino 750 ml', 70.00, 70),
  ('Vinhos', 'Pérgola Tinto Suave', '1 L', 27.00, 71),
  ('Vinhos', 'Mioranza Tinto Suave', '750 ml', 18.00, 72),
  ('Energéticos', 'Baly Tradicional', 'Lata 473 ml', 10.00, 73),
  ('Energéticos', 'Baly Maçã Verde', 'Lata 473 ml', 10.00, 74),
  ('Energéticos', 'Baly Açaí', 'Lata 473 ml', 10.00, 75),
  ('Energéticos', 'Baly Coco e Açaí', 'Lata 473 ml', 10.00, 76),
  ('Energéticos', 'Baly Melancia', 'Lata 473 ml', 10.00, 77),
  ('Energéticos', 'Baly Morango e Pêssego sem açúcar', 'Lata 473 ml', 10.00, 78),
  ('Energéticos', 'Baly Tradicional', 'Lata 250 ml', 7.00, 79),
  ('Energéticos', 'Baly Coco e Açaí', 'Lata 250 ml', 7.00, 80),
  ('Energéticos', 'Baly Cola', 'Lata 250 ml', 7.00, 81),
  ('Energéticos', 'Baly Melancia', 'Lata 250 ml', 7.00, 82),
  ('Energéticos', 'Red Bull', 'Lata 250 ml', 11.00, 83),
  ('Energéticos', 'Red Bull Sem Açúcar', 'Lata 250 ml', 11.00, 84),
  ('Energéticos', 'Red Bull Cereja e Frutas Silvestres', 'Lata 250 ml', 11.00, 85),
  ('Energéticos', 'Red Bull Melancia', 'Lata 250 ml', 11.00, 86),
  ('Energéticos', 'Monster Ultra Watermelon Zero', 'Lata 473 ml', 10.00, 87),
  ('Energéticos', 'Monster Ultra Paradise', 'Lata 473 ml', 11.00, 88),
  ('Energéticos', 'Monster Mango Loco', 'Lata', 11.00, 89),
  ('Energéticos', 'Mister Hemp Bomba Original', 'Lata 473 ml', 11.00, 90),
  ('Energéticos', 'Extra Power', 'Lata 270 ml', 7.50, 91),
  ('Energéticos', 'Extra Power', 'Garrafa 2 L', 18.00, 92),
  ('Refrigerante 2 L', 'Coca-Cola Original', '2 L', 12.90, 93),
  ('Refrigerante 2 L', 'Coca-Cola Sem Açúcar', '2 L', 13.50, 94),
  ('Refrigerante 2 L', 'Guaraná Antarctica', '2 L', 10.00, 95),
  ('Refrigerante 2 L', 'Fanta Laranja', '2 L', 10.50, 96),
  ('Refrigerante 2 L', 'Pepsi', '2 L', 10.00, 97),
  ('Refrigerante 2 L', 'Sukita Laranja', '2 L', 8.00, 98),
  ('Refrigerante 2 L', 'Sukita Tubaína', '2 L', 8.00, 99),
  ('Refrigerante 2 L', 'Soda Limonada Antarctica', '2 L', 8.00, 100),
  ('Refrigerante lata', 'Coca-Cola lata', '350 ml', 4.50, 101),
  ('Refrigerante lata', 'Pepsi lata', '350 ml', 4.00, 102),
  ('Refrigerante lata', 'Sukita Laranja lata', '350 ml', 4.00, 103),
  ('Refrigerante lata', 'Guaraná Antarctica lata', '269 ml', 3.00, 104),
  ('Refrigerante lata', 'Guaraná Antarctica lata', '350 ml', 4.00, 105),
  ('Sucos e água de coco', 'Néctar Nutri Néctar Maracujá', 'Caixa 1 L', 7.50, 106),
  ('Sucos e água de coco', 'Néctar Nutri Néctar Abacaxi', 'Caixa 1 L', 7.50, 107),
  ('Sucos e água de coco', 'Néctar Nutri Néctar Caju', 'Caixa 1 L', 7.50, 108),
  ('Sucos e água de coco', 'Néctar Nutri Néctar Morango', 'Caixa 1 L', 7.50, 109),
  ('Sucos e água de coco', 'Néctar La Fruit Uva', 'Caixa 1 L', 10.00, 110),
  ('Sucos e água de coco', 'Água de coco Ducoco', '1 L', 12.00, 111),
  ('Sucos e água de coco', 'Água de coco Natucoco Natural', 'Unidade', 8.00, 112),
  ('Cigarros', 'Carlton Dunhill', 'Maço', 18.00, 113),
  ('Cigarros', 'Lucky Strike', 'Maço', 18.00, 114),
  ('Cigarros', 'Rothmans Azul', 'Maço', 14.00, 115),
  ('Cigarros', 'Rothmans Prata', 'Maço', 14.00, 116),
  ('Cigarros', 'Rothmans Vermelho', 'Maço', 14.00, 117),
  ('Palheiros', 'Palheiro JC Menta', 'Caixa com 10', 12.00, 118),
  ('Palheiros', 'Palheiro JC Uva', 'Caixa com 10', 12.00, 119),
  ('Palheiros', 'Palheiro Paulistinha Tradicional', 'Caixa com 20', 32.00, 120),
  ('Palheiros', 'Palheiro Piracanjuba', 'Caixa com 20', 22.00, 121),
  ('Palheiros', 'Palheiro Santropez', 'Caixa com 20', 30.00, 122),
  ('Palheiros', 'Palheiro Terra Tombada Uva', 'Unidade', 1.00, 123),
  ('Palheiros', 'Terra Tombada Blue Ice', 'Caixa com 10', 10.00, 124),
  ('Palheiros', 'Terra Tombada Cereja', 'Caixa com 10', 10.00, 125),
  ('Palheiros', 'Terra Tombada Menta', 'Caixa com 10', 10.00, 126),
  ('Palheiros', 'Terra Tombada Menta', 'Caixa com 20', 16.00, 127),
  ('Palheiros', 'Terra Tombada Tradicional', 'Caixa com 10', 10.00, 128),
  ('Palheiros', 'Terra Tombada Uva', 'Caixa com 10', 10.00, 129),
  ('Seda e blunt', 'Blunt King Chocolate', 'Unidade', 12.00, 130),
  ('Seda e blunt', 'Blunt King Maçã Verde', 'Unidade', 12.00, 131),
  ('Seda e blunt', 'Blunt King Morango', 'Unidade', 12.00, 132),
  ('Seda e blunt', 'Blunt King Uva', 'Unidade', 12.00, 133),
  ('Seda e blunt', 'Blunt Melancia', 'Unidade', 12.00, 134),
  ('Seda e blunt', 'Seda Papelito Bandeja', 'Unidade', 10.00, 135),
  ('Seda e blunt', 'Seda Papelito Brown Longa', '130 x 44 mm', 6.00, 136),
  ('Seda e blunt', 'Seda Smoking Deluxe King Size', '110 x 44 mm', 12.00, 137),
  ('Seda e blunt', 'Zomo Alfafa', 'Unidade', 5.00, 138),
  ('Essências e narguile', 'Alumínio', 'Unidade', 1.00, 139),
  ('Essências e narguile', 'Carvão de coco', 'Unidade', 1.00, 140),
  ('Essências e narguile', 'Essência Nay Banana Melon', 'Pacote', 13.00, 141),
  ('Essências e narguile', 'Essência Nay Bubble Grape', 'Pacote', 13.00, 142),
  ('Essências e narguile', 'Essência Nay Cherry Mint', 'Pacote', 13.00, 143),
  ('Essências e narguile', 'Essência Nay Green Apple Mint', 'Pacote', 13.00, 144),
  ('Essências e narguile', 'Essência Nay Lemon Mint', 'Pacote', 13.00, 145),
  ('Essências e narguile', 'Essência Nay Manga Banana', 'Pacote', 13.00, 146),
  ('Essências e narguile', 'Essência Nay Melancia', 'Pacote', 13.00, 147),
  ('Essências e narguile', 'Essência Nay Melon Blend', 'Pacote', 13.00, 148),
  ('Essências e narguile', 'Essência Nay Mint', 'Pacote', 13.00, 149),
  ('Essências e narguile', 'Essência Nay Red Blend', 'Pacote', 13.00, 150),
  ('Essências e narguile', 'Essência Nay Strawberry Blast', 'Pacote', 13.00, 151),
  ('Essências e narguile', 'Essência Oni Icy Mint', 'Pacote', 13.00, 152),
  ('Essências e narguile', 'Essência Onix Apple', 'Pacote', 13.00, 153),
  ('Essências e narguile', 'Essência Onix Banana', 'Pacote', 13.00, 154),
  ('Essências e narguile', 'Essência Onix Cherry Orange', 'Pacote', 13.00, 155),
  ('Essências e narguile', 'Essência Onix Chiclete Canela', 'Pacote', 13.00, 156),
  ('Essências e narguile', 'Essência Onix Danon', 'Pacote', 13.00, 157),
  ('Essências e narguile', 'Essência Onix França', 'Pacote', 13.00, 158),
  ('Essências e narguile', 'Essência Onix Grape', 'Pacote', 13.00, 159),
  ('Essências e narguile', 'Essência Onix Itália Uva Roxa', 'Pacote', 13.00, 160),
  ('Essências e narguile', 'Essência Onix Melancia', 'Pacote', 13.00, 161),
  ('Essências e narguile', 'Essência Onix Mint', 'Pacote', 13.00, 162),
  ('Essências e narguile', 'Essência Sense Banana', 'Pacote', 13.00, 163),
  ('Essências e narguile', 'Essência Sense Candy Strawberry Ice', 'Pacote', 13.00, 164),
  ('Essências e narguile', 'Essência Sense Hortelã Ice', 'Pacote', 13.00, 165),
  ('Essências e narguile', 'Essência Sense Kiwi e Melão Ice', 'Pacote', 13.00, 166),
  ('Essências e narguile', 'Essência Sense Maracujá Ice', 'Pacote', 13.00, 167),
  ('Essências e narguile', 'Essência Sense Tutti Frutti Ice', 'Pacote', 13.00, 168),
  ('Essências e narguile', 'Essência ZGY Berry', 'Pacote', 13.00, 169),
  ('Essências e narguile', 'Essência ZGY Cherry', 'Pacote', 13.00, 170),
  ('Essências e narguile', 'Essência ZGY Duas Goiabas', 'Pacote', 13.00, 171),
  ('Essências e narguile', 'Essência ZGY Fresh 66', 'Pacote', 13.00, 172),
  ('Essências e narguile', 'Essência ZGY Fresh Melon', 'Pacote', 13.00, 173),
  ('Essências e narguile', 'Essência ZGY Frutas Roxas', 'Pacote', 13.00, 174),
  ('Essências e narguile', 'Essência ZGY Frutas Verdes', 'Pacote', 13.00, 175),
  ('Essências e narguile', 'Essência ZGY Frutti', 'Pacote', 13.00, 176),
  ('Essências e narguile', 'Essência ZGY Manga Tropical', 'Pacote', 13.00, 177),
  ('Essências e narguile', 'Essência ZGY Sorvete de Limão', 'Pacote', 13.00, 178),
  ('Essências e narguile', 'Essência ZGY Tropical', 'Pacote', 13.00, 179),
  ('Essências e narguile', 'Essência ZGY Watermelon Bomb', 'Pacote', 13.00, 180),
  ('Essências e narguile', 'Essência Zomo Abacaxi', 'Pacote', 11.00, 181),
  ('Essências e narguile', 'Essência Zomo Cereja', 'Pacote', 11.00, 182),
  ('Essências e narguile', 'Essência Zomo Hype Mint', 'Pacote', 11.00, 183),
  ('Essências e narguile', 'Essência Zomo Max Chiclete Tutti Frutti', 'Pacote', 11.00, 184),
  ('Essências e narguile', 'Essência Zomo Max Uva', 'Pacote', 11.00, 185),
  ('Essências e narguile', 'Essência Zomo Mint', 'Pacote', 11.00, 186),
  ('Essências e narguile', 'Essência Zomo Strong Mint', 'Pacote', 11.00, 187),
  ('Essências e narguile', 'Essência Zomo Strong Orange', 'Pacote', 11.00, 188),
  ('Essências e narguile', 'Essência Zomo Swiss Alps', 'Pacote', 11.00, 189),
  ('Erva para tereré', 'Erva Redneck', 'Pacote', 24.00, 190),
  ('Erva para tereré', 'Erva Tereré Generalmint', 'Pacote', 23.00, 191),
  ('Erva para tereré', 'Erva Trots Lima Caipira', 'Pacote', 26.00, 192),
  ('Erva para tereré', 'Erva Trots Menta e Limão', 'Pacote', 26.00, 193),
  ('Erva para tereré', 'Erva Trots Menta Stronger', 'Pacote', 26.00, 194),
  ('Erva para tereré', 'Erva Trots Sabores', 'Pacote', 26.00, 195),
  ('Chocolates', 'Barra de Cereal Trio Protein Chocolate', '33 g', 10.00, 196),
  ('Chocolates', 'Lacta Diamante Negro', '80 g', 10.00, 197),
  ('Chocolates', 'Lacta Intense Meio Amargo 40% Cacau', '85 g', 10.00, 198),
  ('Chocolates', 'Chocolate 5 Star', '40 g', 3.50, 199),
  ('Chocolates', 'M&M’s ao Leite', '132 g', 15.00, 200),
  ('Chocolates', 'M&M’s Crispy', '120 g', 15.00, 201),
  ('Chocolates', 'Rocks Ovomaltine', '40 g', 6.00, 202),
  ('Chocolates', 'Nestlé Alpino ao Leite', '85 g', 10.00, 203),
  ('Chocolates', 'Nestlé Classic Meio Amargo', '80 g', 10.00, 204),
  ('Chocolates', 'KitKat ao Leite', '41,5 g', 5.00, 205),
  ('Chocolates', 'KitKat Dark', '41,5 g', 5.00, 206),
  ('Chocolates', 'Ovomaltine Hershey’s', '77 g', 10.00, 207),
  ('Chocolates', 'Snickers', '45 g', 4.50, 208),
  ('Chocolates', 'Wafer Peccin Trento Massimo Cookie', '30 g', 3.00, 209),
  ('Salgadinhos', 'Batata Lisa Rústica Pratic Leve', '80 g', 6.00, 210),
  ('Salgadinhos', 'Batata Lisa Rústica Pratic Leve com Ketchup', '80 g', 6.00, 211),
  ('Salgadinhos', 'Batata Ondulada Pratic Leve Tradicional', '40 g', 4.00, 212),
  ('Salgadinhos', 'Cheetos Lua Parmesão', '35 g', 3.50, 213),
  ('Salgadinhos', 'Cheetos Onda Requeijão', '40 g', 3.50, 214),
  ('Salgadinhos', 'Micos Pizza', '41 g', 3.00, 215),
  ('Salgadinhos', 'Micos Galinha', '41 g', 3.00, 216),
  ('Salgadinhos', 'Micos Queijo', '45 g', 3.00, 217),
  ('Salgadinhos', 'Micos Requeijão', '45 g', 3.00, 218),
  ('Salgadinhos', 'Skiny Original', '35 g', 3.50, 219),
  ('Balas e chicletes', 'Halls Cereja', '28 g', 2.00, 220),
  ('Balas e chicletes', 'Halls Extra Forte', '27,5 g', 2.00, 221),
  ('Balas e chicletes', 'Halls Melancia', '28 g', 2.00, 222),
  ('Balas e chicletes', 'Halls Menta', '28 g', 2.00, 223),
  ('Balas e chicletes', 'Halls Morango', '28 g', 2.00, 224),
  ('Balas e chicletes', 'Halls Uva Verde', '28 g', 2.00, 225),
  ('Balas e chicletes', 'Halls Mentol', '28 g', 2.00, 226),
  ('Balas e chicletes', 'Trident 21s Tutti-Frutti', 'Unidade', 3.00, 227),
  ('Balas e chicletes', 'Trident Canela', '8 g', 3.00, 228),
  ('Balas e chicletes', 'Trident Hortelã', '8 g', 3.00, 229),
  ('Balas e chicletes', 'Trident Menta', '8 g', 3.00, 230),
  ('Balas e chicletes', 'Trident Morango', '8 g', 3.00, 231),
  ('Balas e chicletes', 'Trident Melancia', '8 g', 3.00, 232),
  ('Balas e chicletes', 'Trident Menta', '25,2 g', 6.00, 233),
  ('Balas e chicletes', 'Trident Melancia', '25,2 g · 14 unidades', 6.00, 234),
  ('Balas e chicletes', 'Trident Max Hortelã Fresca', '16 g · 5 unidades', 4.00, 235),
  ('Balas e chicletes', 'Trident Max Menta Blueberry', '16,5 g', 4.00, 236),
  ('Balas e chicletes', 'Trident Xsenses Cereja Ice', '8 g', 3.00, 237),
  ('Balas e chicletes', 'Trident Xsenses Intense', '8 g', 3.00, 238),
  ('Balas e chicletes', 'Trident Xsenses Acid Blueberry', '8 g · 5 unidades', 3.00, 239),
  ('Balas e chicletes', 'Trident Xsenses Melancia Mint', '54 g', 10.00, 240),
  ('Balas e chicletes', 'Trident Xsenses Morango Lime', '54 g', 10.00, 241),
  ('Balas e chicletes', 'Trident Xsenses Peppermint', '54 g', 10.00, 242),
  ('Balas e chicletes', 'Trident Xsenses Spearmint', '54 g', 10.00, 243),
  ('Balas e chicletes', 'Mentos Pure Fresh Wintergreen', '56 g · 28 unidades', 13.00, 244),
  ('Balas e chicletes', 'Mentos Pure White Mint', '56 g · 28 unidades', 13.00, 245),
  ('Balas e chicletes', 'Mentos Up2u Menta e Tutti-Frutti', '56 g · 28 unidades', 13.00, 246),
  ('Macarrão instantâneo', 'Cup Noodles Galinha Caipira', '69 g', 6.00, 247),
  ('Macarrão instantâneo', 'Cup Noodles Carne Defumada', '69 g', 6.00, 248),
  ('Macarrão instantâneo', 'Miojo Lámen Galinha Caipira', '85 g', 3.00, 249),
  ('Macarrão instantâneo', 'Miojo Lámen Hot Carne Desfiada', '85 g', 3.00, 250);

-- 3) Produtos que já existem: só move para a categoria certa
update public.produtos p
set categoria_id = c.id
from _seed_produtos s
join public.categorias c on c.nome = s.categoria
where p.nome = s.nome
  and p.descricao_unidade = s.unidade
  and p.categoria_id <> c.id;

-- 4) Produtos que faltam: cadastra
insert into public.produtos (categoria_id, nome, descricao_unidade, preco, ativo, em_estoque, destaque, ordem)
select c.id, s.nome, s.unidade, s.preco, true, true, false, s.ordem
from _seed_produtos s
join public.categorias c on c.nome = s.categoria
where not exists (
  select 1 from public.produtos p
  where p.nome = s.nome and p.descricao_unidade = s.unidade
);

-- 5) Itens de exemplo do seed.sql que não existem no cardápio real
--    (ex.: "Cigarro Black", "Essência de Morango", "Miojo").
--    São só pausados (ativo = false), não apagados. Dá para reativar no painel.
update public.produtos p
set ativo = false
where not exists (
  select 1 from _seed_produtos s
  where s.nome = p.nome and s.unidade = p.descricao_unidade
);

-- 6) Categorias antigas do seed.sql que ficaram sem produto ativo
update public.categorias c
set ativo = false
where c.nome not in (select distinct categoria from _seed_produtos)
  and not exists (select 1 from public.produtos p where p.categoria_id = c.id and p.ativo);

commit;

-- 7) Conferência: cada categoria e quantos produtos ativos ela tem
select c.ordem, c.nome, c.tabacaria, count(p.id) filter (where p.ativo) as produtos_ativos
from public.categorias c
left join public.produtos p on p.categoria_id = c.id
where c.ativo
group by c.id
order by c.ordem;

select count(*) as total_produtos_ativos from public.produtos where ativo;
