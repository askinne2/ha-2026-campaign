# HA 2026 Campaign — Board Planning Site

Public planning hub for Hispanic Alliance's 2026 phased fundraising campaign (SDA 10 Years of Leaders + HHM).

**Live URL (after deploy):** https://askinne2.github.io/ha-2026-campaign/

## Local preview

```bash
python3 -m http.server 8080
# open http://127.0.0.1:8080
```

## Verify

With the local server running:

```bash
npm run verify
```

Content-only check (no server needed):

```bash
bash tests/verify-content.sh
```

## Deploy (GitHub Pages)

1. Create repo `askinne2/ha-2026-campaign` on GitHub (if it does not exist)
2. `git remote add origin git@github.com:askinne2/ha-2026-campaign.git`
3. `git push -u origin main`
4. Settings → Pages → Deploy from branch `main` / root
5. Site live in ~2 minutes
