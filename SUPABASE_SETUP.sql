-- Run this in Supabase SQL Editor AFTER reviewing.
alter table public.events add column if not exists payload jsonb;
alter table public.registrations add column if not exists payload jsonb;
