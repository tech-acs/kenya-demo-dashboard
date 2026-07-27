# Deployment

### 1. Clone repository
```
git clone https://github.com/tech-acs/kenya-demo-dashboard
```

### 2. Install dependencies
```
composer install
```

### 3. Set environment variables
Add to .env:
```
CHIMERA_DEMO=true
DEMO_ACCOUNT=demo@example.com

DB_USERNAME=postgres
DB_PASSWORD=postgres
DB_DATABASE=demo-dashboard
```
If your app uses database-backed SESSION_DRIVER, CACHE_STORE, or QUEUE_CONNECTION, switch them to file-based or disabled:

```
SESSION_DRIVER=file
CACHE_STORE=file
QUEUE_CONNECTION=sync or redis
```

### 4. Seed the demo user
Run before switching to the read-only DB credentials:
```
php artisan chimera:demo-setup
```
This creates a user demo@example.com with the Super Admin role and a random password (not needed for login).

What the command does:

- Creates or finds a user by DEMO_ACCOUNT email
- Creates or finds the Super Admin role
- Assigns that role to the user
- Warns if session/cache/queue use database drivers

### 5. Create a read-only PostgreSQL role
Connect as a superuser (postgres) and run:
```
CREATE ROLE demo_db_user WITH LOGIN PASSWORD 'a-strong-password';
GRANT CONNECT ON DATABASE demo-dashboard TO demo_db_user;

-- Grant SELECT on all existing tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO demo_db_user;

-- Ensure future tables also get SELECT
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO demo_db_user;
```

### 6. Switch to read-only database user
```
DB_USERNAME=demo_db_user
DB_PASSWORD=a-strong-password
```
