GARC Supabase sync integration notes

Your original site is a static frontend and has a hardcoded client-side Admin login.
A real cross-device shared database requires Supabase integration and secure authentication/RLS.

Do NOT publish participant personal data with permissive anon policies.
Do NOT use a service-role key in index.html/script.js.

The existing tables are:
events(id,title,description,event_date,venue,status)
registrations(id,event_id,participant_name,email,mobile,...)
certificates(...)

The current portal event object includes additional fields (type/start/end/deadline/capacity) and branding is stored in localStorage.
Before deployment, migrate all fields, implement Supabase CRUD, admin Auth, restrictive RLS, and move branding/logo/signature to shared storage.
