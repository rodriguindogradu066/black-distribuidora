--====================================================
-- Black Distribuidora - Seed inicial
--====================================================
-- Rodar depois do supabase.sql.

insert into public.categorias (id, nome, icone, ordem, ativo, tabacaria)
values
  ('3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cervejas lata', 'lata', 1, true, false),
  ('996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Caixas de cerveja', 'caixa', 2, true, false),
  ('febb3d93-3d13-4f71-9bcb-7189188fef51', 'Long neck e ice', 'longneck', 3, true, false),
  ('7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Whisky', 'whisky', 4, true, false),
  ('d5e5a4a1-52ab-4eb2-ac4f-e515d2cdf7d5', 'Gin', 'gin', 5, true, false),
  ('7c332818-50d4-4f46-a6ca-8fb328d80c0e', 'Vodka', 'vinho', 6, true, false),
  ('1300ad65-5aeb-431c-bd76-6d3fb70a1700', 'Energéticos', 'suco', 7, true, false),
  ('d57e1c2c-b177-4d61-b9ed-939ab5f6f5c6', 'Refrigerantes', 'suco', 8, true, false),
  ('7cca80d9-fb17-4d7b-8ed3-0f9585a8fe39', 'Tabacaria', 'cigarro', 9, true, true),
  ('0b7435aa-66e7-4250-9300-0d65aa94b85c', 'Essências', 'seda', 10, true, false),
  ('3d0fd7d5-1c5a-4a97-a378-e9f2f1f33b51', 'Chocolates', 'chocolate', 11, true, false),
  ('bf9d392a-335f-4b9b-a8c0-c3232d5d0a91', 'Miojo', 'miojo', 12, true, false)
on conflict (id) do nothing;

insert into public.produtos (id, categoria_id, nome, descricao_unidade, preco, foto_url, ativo, em_estoque, destaque, ordem, criado_em)
values
  ('b1ae4c61-5724-4212-b33a-53ddef114a0a', '3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cerveja Antarctica lata', '269 ml', 3.50, null, true, true, false, 1, now()),
  ('e7c1dc42-02c0-4d9b-a46c-77a95d10e8f1', '3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cerveja Amstel lata', '269 ml', 4.00, null, true, true, false, 2, now()),
  ('19dc2ca9-be3d-442e-9dcb-9ec9ed0d3f9c', '3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cerveja Original lata', '269 ml', 4.00, null, true, true, false, 3, now()),
  ('7d8057a7-fa90-420d-b843-9c9188d2db5e', '3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cerveja Heineken lata', '269 ml', 5.00, null, true, true, false, 4, now()),
  ('c2d4b09a-30bd-4e6c-b416-c78e844be2ec', '3dcb1fe2-25bc-4b90-9f9d-3f615be2bd0f', 'Cerveja Skol lata', '269 ml', 3.50, null, true, true, false, 5, now()),
  ('52f5154d-36e1-4a3a-a5fc-d2ec6f4c5d88', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Antarctica caixa', '15 latas de 269 ml', 43.00, null, true, true, true, 6, now()),
  ('60059820-fd56-4a00-8cf1-1e642d9d4f1d', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Brahma Chopp caixa', 'Caixa', 43.00, null, true, true, false, 7, now()),
  ('1094f4d4-fdd4-49b0-b521-2ff8d6956815', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Budweiser caixa', 'Caixa', 47.00, null, true, true, false, 8, now()),
  ('69d0d916-1e07-48a6-8cb2-92bf1cdc99a0', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Heineken caixa', '8 latas de 269 ml', 35.00, null, true, true, false, 9, now()),
  ('2f4eb7b6-53d4-4b2f-a98c-67dc2c4f4fd3', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Heineken caixa long neck', '330 ml', 45.00, null, true, true, false, 10, now()),
  ('bbd31d8d-fa6b-4f97-b5ad-ca4887fb784d', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Amstel caixa', 'Latas de 269 ml', 38.00, null, true, true, false, 11, now()),
  ('0d49f7d0-8e44-497c-a0b9-7a234a6d7d8d', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Original caixa', 'Latas de 269 ml', 52.00, null, true, true, false, 12, now()),
  ('d01bbfd8-9cc1-4505-9a91-426513bf601a', '996a9771-4d82-4953-a7d1-4d364fce0b6a', 'Skol caixa', 'Latas de 269 ml', 43.00, null, true, true, false, 13, now()),
  ('94178e75-b8f3-4e31-98d8-ed89ecb5eb2a', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Beats GT', 'Long neck 269 ml', 9.00, null, true, true, false, 14, now()),
  ('bf483f7d-f4f9-4ab1-89e0-b20d4d66e260', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Beats Senses', 'Long neck 269 ml', 9.00, null, true, true, false, 15, now()),
  ('9dfe4218-9d99-4f4a-8849-ea42d8f0f2d0', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Ice Balada 51', '275 ml', 7.00, null, true, true, false, 16, now()),
  ('62a4dff9-8db1-4f80-9a9b-95f543d8df2b', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Ice de Maracujá 51', '275 ml', 9.50, null, true, true, false, 17, now()),
  ('b0c89d71-a91d-4f13-8ae7-4fa7ab40b7e0', 'febb3d93-3d13-4f71-9bcb-7189188fef51', '51 Ice Limão', '275 ml', 7.00, null, true, true, false, 18, now()),
  ('0bd6bddb-da6c-4535-ba80-10736effbb94', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Ice Fruit Mix 51 Morango e Laranja', '275 ml', 7.00, null, true, true, false, 19, now()),
  ('692efb1f-fb7b-49a4-a7d9-6ef7becc13b4', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Budweiser long neck', '330 ml', 7.00, null, true, true, false, 20, now()),
  ('e568bcb7-5e27-4f8c-8866-e37f06d9d56d', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Eisenbahn Pilsen Puro Malte', 'Long neck 355 ml', 7.00, null, true, true, false, 21, now()),
  ('d602f6a7-59bb-4a1b-9fce-74bedce4e8db', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Corona Extra', 'Long neck 330 ml', 8.00, null, true, true, false, 22, now()),
  ('5de98d5d-4dca-46d4-96de-f5351e5ca87f', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Heineken long neck', '250 ml', 6.50, null, true, true, false, 23, now()),
  ('3c44ddd0-ef57-46df-b363-5b16d9d6d55d', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Heineken long neck', '330 ml', 8.00, null, true, true, false, 24, now()),
  ('6c7a7e1d-36f0-4401-9160-c9a1be8bf985', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Império Lager', 'Long neck 275 ml', 6.50, null, true, true, false, 25, now()),
  ('5b05ee66-9bc8-47bd-a056-8d8577d8f0da', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Stella Artois Puro Malte', '330 ml', 7.00, null, true, true, false, 26, now()),
  ('5e1d4a05-d5c9-42d8-b99d-fa3ecad964e0', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Stella Artois Pure Gold sem glúten', 'Long neck 330 ml', 8.00, null, true, true, false, 27, now()),
  ('d93c7d93-b5f3-4b97-b19b-25a7f2c7f1d6', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Spaten Puro Malte', '355 ml', 7.00, null, true, true, false, 28, now()),
  ('f8e6f0c0-9385-4f8d-b8d4-f6ba1029c5d5', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Budweiser Zero Álcool', '330 ml', 7.00, null, true, true, false, 29, now()),
  ('7c41a2fa-3d65-4da9-b87f-b20d35c217d7', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Corona Zero Álcool', 'Long neck 330 ml', 8.00, null, true, true, false, 30, now()),
  ('f3a4492a-09bc-4f6d-bd98-98d8d20fd03d', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Heineken Zero', '330 ml', 8.00, null, true, true, false, 31, now()),
  ('6a8c15ea-6bb8-4b88-b4a9-d57b85db5980', 'febb3d93-3d13-4f71-9bcb-7189188fef51', 'Mansão Maromba Gin + Melancia', '1 L', 18.00, null, true, true, false, 32, now()),
  ('de41def4-88d8-49ed-8a10-224ee93d2a71', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Ballantine’s', '1 L', 75.00, null, true, true, false, 33, now()),
  ('9180622c-3ce0-4d6d-9d50-16eaef53fe0e', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Blue Label', 'Garrafa', 1100.00, null, true, true, false, 34, now()),
  ('50e6dd23-c734-4a35-b93d-8539cbf8aab3', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Buchanan’s', '1 L', 160.00, null, true, true, false, 35, now()),
  ('d4c289ea-3554-4faa-9c1c-2c791ef2c8d8', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Cavalo Branco', '1 L', 75.00, null, true, true, false, 36, now()),
  ('b7c2d9ec-62f5-4b4a-8c88-4145934a80d5', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Chivas Regal', '1 L', 130.00, null, true, true, false, 37, now()),
  ('5fa8bbd8-edab-4a9a-8f6d-5ccab8f23943', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Gold Label', '750 ml', 235.00, null, true, true, false, 38, now()),
  ('e7b14bd2-5c3f-4387-9af0-7358f988f577', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Jack Daniel’s Maçã', 'Garrafa', 135.00, null, true, true, false, 39, now()),
  ('d39d76bb-1f51-4068-9768-bb0dc2ee8f32', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Jack Daniel’s Tradicional', '1 L', 135.00, null, true, true, false, 40, now()),
  ('7c8b86d8-56cd-4031-80d4-7b63d1d6d29b', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Old Parr', 'Garrafa', 135.00, null, true, true, false, 41, now()),
  ('7c9f4262-fb06-4d35-a5e5-3e0d98da4a37', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Red Label', '1 L', 85.00, null, true, true, false, 42, now()),
  ('cc1c17d0-2560-499f-a2df-f8f94b276f7f', '7c62b587-15dc-4598-a4b8-6ea0176f6f5c', 'Royal Salute', 'Garrafa', 1000.00, null, true, true, false, 43, now()),
  ('f3f2019d-b744-4e9d-8d44-4d925cb03100', 'd5e5a4a1-52ab-4eb2-ac4f-e515d2cdf7d5', 'Gin Invictus', 'Garrafa', 75.00, null, true, true, true, 44, now()),
  ('d0c5b2eb-c3b7-4b92-add1-1b0c8d1f5f5c', 'd5e5a4a1-52ab-4eb2-ac4f-e515d2cdf7d5', 'Gin Aqva', 'Garrafa', 72.00, null, true, true, false, 45, now()),
  ('4cf2157a-9d60-4d8d-a1d8-b9deac8aa40a', '7c332818-50d4-4f46-a6ca-8fb328d80c0e', 'Smirnoff', '750 ml', 60.00, null, true, true, false, 46, now()),
  ('0f7b5629-0f71-4efc-ac60-56d353814c67', '1300ad65-5aeb-431c-bd76-6d3fb70a1700', 'Energético Red Bull', '250 ml', 12.00, null, true, true, false, 47, now()),
  ('f9df34da-2d47-4d9b-9ea7-6c4e7fc93d25', '1300ad65-5aeb-431c-bd76-6d3fb70a1700', 'Energético Monster', '500 ml', 14.00, null, true, true, false, 48, now()),
  ('0d24d4c5-9900-4a66-b5d2-f0d59d04d80c', 'd57e1c2c-b177-4d61-b9ed-939ab5f6f5c6', 'Refrigerante Coca-Cola 2 L', '2 L', 10.00, null, true, true, false, 49, now()),
  ('f4f93a7e-7868-45f7-8f11-b4ff08d6d142', 'd57e1c2c-b177-4d61-b9ed-939ab5f6f5c6', 'Refrigerante Guaraná 2 L', '2 L', 9.00, null, true, true, false, 50, now()),
  ('17bde4af-95b5-4fb0-9c92-3819d5c94b54', '7cca80d9-fb17-4d7b-8ed3-0f9585a8fe39', 'Cigarro Black', 'Unidade', 18.00, null, true, true, true, 51, now()),
  ('e70b6db6-d2ca-4d12-b971-5de1e7d8de0e', '7cca80d9-fb17-4d7b-8ed3-0f9585a8fe39', 'Cigarro Marlboro', 'Unidade', 19.00, null, true, true, false, 52, now()),
  ('71c7e0b4-95db-4d2d-9e3a-907367d385c4', '0b7435aa-66e7-4250-9300-0d65aa94b85c', 'Essência de Morango', '100 ml', 12.00, null, true, true, false, 53, now()),
  ('2f2effd1-0fdb-4e98-9dbd-5a145b3f9d64', '0b7435aa-66e7-4250-9300-0d65aa94b85c', 'Essência de Uva', '100 ml', 12.00, null, true, true, false, 54, now()),
  ('c4b4a4ac-4a1b-4fc2-b135-d7b4da2c5d2d', '3d0fd7d5-1c5a-4a97-a378-e9f2f1f33b51', 'Chocolate ao leite', 'Barra', 8.00, null, true, true, false, 55, now()),
  ('d84c2444-3fb8-4474-ac57-712f2f31e0b1', '3d0fd7d5-1c5a-4a97-a378-e9f2f1f33b51', 'Chocolate amargo', 'Barra', 10.00, null, true, true, false, 56, now()),
  ('5b32db8d-b84f-4fbd-9d1d-a2dd6b4841da', 'bf9d392a-335f-4b9b-a8c0-c3232d5d0a91', 'Miojo', 'Pacote', 5.00, null, true, true, false, 57, now())
on conflict (id) do nothing;

insert into public.combos (id, nome, preco, itens, foto_url, ativo, mais_pedido, ordem)
values
  ('7e603cc6-0c8d-481e-8932-f6d29d4b8a89', 'Combo Red Label', 120.00, ARRAY['Red Label', '4 gelos saborizados', '1 Extra Power 2 L', '4 copos personalizados'], null, true, true, 1),
  ('fe0c8c51-a6a9-4b8d-a9dd-cfdb9134d5bb', 'Combo Ballantine’s', 100.00, ARRAY['Ballantine’s', '4 gelos saborizados', '1 Extra Power 2 L', '4 copos personalizados'], null, true, false, 2),
  ('f61af2a9-a4d3-4978-8ecb-7839d4e1c64a', 'Combo Cavalo Branco', 100.00, ARRAY['Cavalo Branco', '4 gelos saborizados', '1 Extra Power 2 L', '4 copos personalizados'], null, true, false, 3),
  ('9055e7d5-65b9-4d17-bd92-c5294d29d9a5', 'Combo Buchanan’s', 190.00, ARRAY['Buchanan’s', '4 gelos saborizados', '1 Extra Power 2 L', '4 copos personalizados'], null, true, false, 4),
  ('864216ea-e7f9-4709-9c7d-6f2ca7e3f91d', 'Combo Jack Daniel’s', 175.00, ARRAY['Jack Daniel’s Tradicional', 'Com acompanhamento'], null, true, false, 5),
  ('42b36b62-8db0-4a55-977a-de1f36d5956c', 'Combo Gin Invictus', 60.00, ARRAY['Gin Invictus no sabor que você escolher', 'Informe o sabor nas observações'], null, true, false, 6)
on conflict (id) do nothing;

insert into public.bairros (id, nome, taxa_entrega, ativo, ordem)
values
  ('6ef8f5bb-4f38-4e72-a309-1201a5102d3d', 'Centro', 6.00, true, 1),
  ('4d5fa0d0-b2ef-4f6d-9f45-8008eed380e2', 'Setor Norte', 8.00, true, 2),
  ('4ae04d8b-54bf-4d93-81b3-9b390b12accc', 'Setor Sul', 8.00, true, 3),
  ('fc1a9c8d-0e6b-41ef-87d8-8cfcf8ff8f31', 'Outros bairros', 10.00, true, 4)
on conflict (id) do nothing;
