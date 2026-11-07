# GARC Programme & Certification System

## Files
- `index.html` — website structure
- `style.css` — visual design and responsive styles
- `script.js` — portal interactions and registration/certificate logic
- `garc-logo.*` — extracted logo asset (if the source HTML had a standalone embedded image)

## Publish with GitHub + Vercel
Upload all files into the repository root (same folder as `index.html`). In Vercel select Framework Preset **Other**, Root Directory `./`, leave Build Command and Output Directory blank, then deploy.

## Important limitation
This is a frontend-only portal. Current registration/admin storage is browser localStorage and is not a shared, secure backend. For public institutional use, connect server-side database, authentication, storage, and server-enforced certificate release.
