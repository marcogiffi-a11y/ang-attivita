-- ============================================
-- ANG-Attività — Schema Supabase
-- Esegui questo nel SQL Editor di Supabase
-- ============================================

-- TABELLA ATTIVITÀ
create table if not exists attivita (
  id          bigint primary key generated always as identity,
  user_id     text not null default 'default',
  titolo      text not null,
  categoria   text not null default 'lavoro',
  priorita    text not null default 'media',
  scadenza    date,
  progetto_id text,
  completata  boolean not null default false,
  created_at  timestamptz not null default now()
);

-- TABELLA PROGETTI
create table if not exists progetti (
  id          text primary key,
  user_id     text not null default 'default',
  nome        text not null,
  colore      text not null default '#1d3c6e',
  created_at  timestamptz not null default now()
);

-- RLS (disabilitato per ora, puoi abilitarlo con auth)
alter table attivita enable row level security;
alter table progetti enable row level security;

-- Policy permissiva (accesso pubblico con anon key)
create policy "Public access attivita" on attivita for all using (true) with check (true);
create policy "Public access progetti" on progetti for all using (true) with check (true);
