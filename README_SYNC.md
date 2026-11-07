GARC SUPABASE DEPLOYMENT
1. Run SUPABASE_SETUP.sql in Supabase SQL Editor.
2. Edit supabase-config.js: add exact Supabase Project URL and publishable/anon key.
3. Supabase Authentication > Users: create admin email/password; disable public signups.
4. Replace files in GitHub Pages repo with index.html, script.js, style.css, garc-logo.jpg, supabase-config.js.
5. Admin login now requires Supabase email/password.
WARNING: SQL policies let any authenticated account access admin tables. Keep public signup disabled and create only trusted admin accounts. Never expose service_role key.
