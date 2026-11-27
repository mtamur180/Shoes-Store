# Shoes Commerce

Monorepo for a React storefront, a React admin panel, an Express API, and PostgreSQL.

## Prerequisites

- Node.js 20+ (includes npm)
- Docker Desktop (recommended for PostgreSQL)
- Git (Git Bash is optional on Windows; PowerShell works too)

## Run locally

1. Copy `.env.example` to `.env`.
2. Run `docker compose up -d db`.
3. Run `npm install`.
4. Run `npm run db:seed`.
5. Run `npm run dev`.

Open: storefront `http://localhost:5173`, admin `http://localhost:5174`, API `http://localhost:4000/api/health`.

Admin demo login: `admin@example.com` / `Admin123!`

## Deployment shape

- `www.yourdomain.com` → `apps/storefront`
- `admin.yourdomain.com` → `apps/admin`
- API → `apps/api` (set `VITE_API_URL` to its public URL)

Before production, replace demo credentials/secrets, configure an email provider, payment gateway, object storage, and a managed PostgreSQL service.
