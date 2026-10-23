--====================================================
-- Black Distribuidora - Estrutura do banco
--====================================================

create extension if not exists pgcrypto;

create table if not exists public.categorias (
  id uuid primary key default gen_random_uuid(),
  nome text not null unique,
  icone text not null default 'lata',
  ordem integer not null default 0,
  ativo boolean not null default true,
  tabacaria boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.produtos (
  id uuid primary key default gen_random_uuid(),
  categoria_id uuid not null references public.categorias(id) on delete restrict,
  nome text not null,
  descricao_unidade text not null default 'Unidade',
  preco numeric(12,2) not null default 0,
  foto_url text,
  ativo boolean not null default true,
  em_estoque boolean not null default true,
  destaque boolean not null default false,
  ordem integer not null default 0,
  criado_em timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.combos (
  id uuid primary key default gen_random_uuid(),
  nome text not null,
  preco numeric(12,2) not null default 0,
  itens text[] not null default '{}',
  foto_url text,
  ativo boolean not null default true,
  mais_pedido boolean not null default false,
  ordem integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.bairros (
  id uuid primary key default gen_random_uuid(),
  nome text not null unique,
  taxa_entrega numeric(12,2) not null default 0,
  ativo boolean not null default true,
  ordem integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.config_loja (
  id uuid primary key default gen_random_uuid(),
  whatsapp text not null default '5563900000000',
  whatsapp_exibir text not null default '(63) 9 0000-0000',
  chave_pix text,
  nome_pix text not null default 'Black Distribuidora',
  pedido_minimo numeric(12,2) not null default 20,
  abre text not null default '08:00',
  fecha text not null default '23:00',
  tempo_entrega text not null default '30 a 50 min',
  endereco text not null default 'Paraíso do Tocantins - TO',
  cnpj text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Garantir uma linha de configuração
insert into public.config_loja (
  whatsapp,
  whatsapp_exibir,
  chave_pix,
  nome_pix,
  pedido_minimo,
  abre,
  fecha,
  tempo_entrega,
  endereco,
  cnpj
)
select
  '5563900000000',
  '(63) 9 0000-0000',
  'SUA_CHAVE_PIX',
  'Black Distribuidora',
  20,
  '08:00',
  '23:00',
  '30 a 50 min',
  'Paraíso do Tocantins - TO',
  '00.000.000/0000-00'
where not exists (select 1 from public.config_loja limit 1)
on conflict do nothing;

--====================================================
-- Storage bucket
--====================================================
insert into storage.buckets (id, name, public)
values ('fotos', 'fotos', true)
on conflict (id) do nothing;

--====================================================
-- Trigger para updated_at
--====================================================
create or replace function public.set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger categorias_updated_at
before update on public.categorias
for each row execute procedure public.set_updated_at();

create trigger produtos_updated_at
before update on public.produtos
for each row execute procedure public.set_updated_at();

create trigger combos_updated_at
before update on public.combos
for each row execute procedure public.set_updated_at();

create trigger bairros_updated_at
before update on public.bairros
for each row execute procedure public.set_updated_at();

create trigger config_loja_updated_at
before update on public.config_loja
for each row execute procedure public.set_updated_at();

--====================================================
-- RLS
--====================================================
alter table public.categorias enable row level security;
alter table public.produtos enable row level security;
alter table public.combos enable row level security;
alter table public.bairros enable row level security;
alter table public.config_loja enable row level security;

create policy "Categorias públicas ativas"
on public.categorias
for select
using (ativo = true);

create policy "Produtos públicos ativos"
on public.produtos
for select
using (ativo = true and em_estoque = true or ativo = true);

create policy "Combos públicos ativos"
on public.combos
for select
using (ativo = true);

create policy "Bairros públicos ativos"
on public.bairros
for select
using (ativo = true);

create policy "Config pública"
on public.config_loja
for select
using (true);

create policy "Categorias autenticadas podem alterar"
on public.categorias
for all
using (auth.uid() is not null)
with check (auth.uid() is not null);

create policy "Produtos autenticados podem alterar"
on public.produtos
for all
using (auth.uid() is not null)
with check (auth.uid() is not null);

create policy "Combos autenticados podem alterar"
on public.combos
for all
using (auth.uid() is not null)
with check (auth.uid() is not null);

create policy "Bairros autenticados podem alterar"
on public.bairros
for all
using (auth.uid() is not null)
with check (auth.uid() is not null);

create policy "Config autenticada pode alterar"
on public.config_loja
for all
using (auth.uid() is not null)
with check (auth.uid() is not null);

-- Storage policies
create policy "Fotos públicas de leitura"
on storage.objects
for select
using (bucket_id = 'fotos');

create policy "Fotos autenticadas podem subir"
on storage.objects
for insert
with check (bucket_id = 'fotos' and auth.uid() is not null);

create policy "Fotos autenticadas podem editar"
on storage.objects
for update
using (bucket_id = 'fotos' and auth.uid() is not null)
with check (bucket_id = 'fotos' and auth.uid() is not null);

create policy "Fotos autenticadas podem apagar"
on storage.objects
for delete
using (bucket_id = 'fotos' and auth.uid() is not null);

--====================================================
-- Índices úteis
--====================================================
create index if not exists idx_produtos_ativo on public.produtos (ativo, destaque, ordem);
create index if not exists idx_combos_ativo on public.combos (ativo, mais_pedido, ordem);
create index if not exists idx_categorias_ativo on public.categorias (ativo, ordem);
create index if not exists idx_bairros_ativo on public.bairros (ativo, ordem);

--====================================================
-- Observações:
-- 1) Use o painel do Supabase para criar o usuário admin e configurar Auth.
-- 2) Não use a service role key no frontend.
--====================================================
