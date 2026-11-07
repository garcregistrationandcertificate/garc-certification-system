-- GARC complete synchronization schema (safe additive setup; does not delete records)
alter table public.events add column if not exists payload jsonb;
alter table public.registrations add column if not exists registration_code text;
alter table public.registrations add column if not exists payload jsonb;
create unique index if not exists registrations_registration_code_uq on public.registrations(registration_code);
create table if not exists public.app_settings(key text primary key,value jsonb not null,updated_at timestamptz not null default now());
alter table public.events enable row level security; alter table public.registrations enable row level security; alter table public.app_settings enable row level security;
drop policy if exists "Anyone reads events" on public.events; drop policy if exists "Admins manage events" on public.events; drop policy if exists "Public registration" on public.registrations; drop policy if exists "Admins read registrations" on public.registrations; drop policy if exists "Admins update registrations" on public.registrations; drop policy if exists "Admins manage settings" on public.app_settings; drop policy if exists "Admins read settings" on public.app_settings;
create policy "Anyone reads events" on public.events for select to anon,authenticated using(true);
create policy "Admins manage events" on public.events for all to authenticated using(true) with check(true);
create policy "Public registration" on public.registrations for insert to anon,authenticated with check(true);
create policy "Admins read registrations" on public.registrations for select to authenticated using(true);
create policy "Admins update registrations" on public.registrations for update to authenticated using(true) with check(true);
create policy "Admins manage settings" on public.app_settings for all to authenticated using(true) with check(true);
create policy "Admins read settings" on public.app_settings for select to authenticated using(true);
