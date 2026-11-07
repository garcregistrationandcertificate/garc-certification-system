GARC COMPLETE SYNCHRONIZATION PACKAGE

1. Backup your current GitHub repository files.
2. Supabase Dashboard > SQL Editor: paste and RUN SUPABASE_SETUP.sql. This is additive and does not delete existing records.
3. Upload/replace index.html, script.js, style.css, supabase-config.js, garc-logo.jpg in your GitHub repository (keep same filenames).
4. Wait for GitHub Pages deployment.
5. Admin login with your existing Supabase Auth email/password.
6. Admin panel: click “Sync / Migrate Existing Records” to merge local browser records into Supabase. Existing cloud records are retained.

Events are publicly readable and admin-managed; registration submissions write directly to Supabase; admin registration list and branding load from cloud. Certificate mobile lookup currently uses records loaded in that browser/admin session; public access to the full registrations table is intentionally NOT enabled because it exposes student personal information.

Never put a Supabase service-role key in frontend files. Only publishable/anon key belongs in supabase-config.js.
