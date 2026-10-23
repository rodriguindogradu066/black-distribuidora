# Black Distribuidora — guia rápido

## 1) Crie o projeto no Supabase
1. Acesse https://supabase.com.
2. Crie um novo projeto.
3. Abra o painel do projeto e vá em SQL Editor.
4. Cole o conteúdo do arquivo `supabase.sql` e execute.
5. Depois rode o `seed.sql` para popular os dados iniciais da loja.

## 2) Crie o usuário administrativo
1. No painel do Supabase, vá em Authentication > Users.
2. Clique em Add user.
3. Crie o e-mail e senha do administrador.
4. Esse será o login do painel `admin.html`.

## 3) Configure o bucket de fotos
1. Vá em Storage > Buckets.
2. Verifique se existe o bucket `fotos` público.
3. Se não existir, crie o bucket com visibilidade pública.

## 4) Configure os valores do front-end
1. Abra o arquivo `config.js`.
2. Troque:
   - `https://SEU_PROJETO.supabase.co` pela URL do seu projeto.
   - `SUA_ANON_KEY_AQUI` pela anon key do projeto.
3. Salve o arquivo.

## 5) Suba os arquivos na Hostinger
1. Faça upload dos arquivos:
   - `index.html`
   - `admin.html`
   - `config.js`
2. Mantém tudo na raiz da pasta pública do site ou na pasta `public_html`.
3. Se quiser, também pode usar um subdiretório, mas os caminhos devem refletir isso.

## 6) Acesse o painel
- Abra `admin.html` no navegador.
- Faça login com o usuário criado no Supabase.
- Use as abas para gerenciar produtos, categorias, combos, bairros e configurações.

## 7) O que acontece na loja
- A página `index.html` carrega os dados do Supabase automaticamente.
- Mudanças feitas no painel aparecem ao recarregar a loja.
- O site continua estático, sem build e compatível com Hostinger.

## 8) Importante
- Nunca use a `service_role` no front-end.
- O front-end usa apenas a chave anônima do Supabase.
- O painel admin usa autenticação do Supabase para criar, editar, apagar e subir fotos.

## 9) Dicas
- Para fotos, o painel comprime e reduz antes de enviar.
- Produtos com `em_estoque = false` aparecem como esgotados.
- Produtos com `ativo = false` não aparecem para o público.

Se quiser, pode abrir `admin.html` em qualquer navegador e começar a usar imediatamente após configurar a URL e a anon key.
