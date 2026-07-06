# Recipe: Database Migration

> Step-by-step procedure for testing, running, and rolling back database schema changes.

This recipe details the exact execution steps to apply database migrations with zero data loss and maximum rollback safety, complying with [playbooks/DATABASE_MIGRATION.md](../playbooks/DATABASE_MIGRATION.md).

---

## 🛠️ Step-by-Step Execution

### Step 1: Write a Backward-Compatible Migration Script
Write your migration script (UP and DOWN paths) using your framework of choice (Prisma, Knex, Liquibase). Follow these rules:
*   Never run raw `ALTER TABLE` queries on active production tables without checking for table-lock risks.
*   Make schema changes additive (e.g., add new columns as nullable, do not rename columns immediately).

### Step 2: Test UP and DOWN Paths Locally
1.  Spin up your local database container and run the migration:
    ```bash
    # Example using Knex:
    npx knex migrate:latest
    ```
2.  Verify the schema changes reflect correctly in your local database explorer.
3.  Test rollback capability:
    ```bash
    npx knex migrate:rollback
    ```
4.  Confirm the database rolls back to its exact previous schema state.

### Step 3: Verify Query Indexing (Performance check)
Confirm that any foreign key columns or queries introduced by the migration are covered by database indexes:
*   Ensure foreign keys have indexes to prevent slow table joins.
*   Refer to [playbooks/PERFORMANCE_REVIEW.md](../playbooks/PERFORMANCE_REVIEW.md) guidelines.

### Step 4: Perform Production Pre-Release Backup
Right before executing the production deploy, trigger a database backup:
*   **For PostgreSQL (Example):**
    ```bash
    pg_dump -U username -h hostname -d dbname -F c -b -v -f pre_release_backup.dump
    ```
*   Confirm the backup file size is valid and has successfully written to your retention bucket (e.g., S3). Refer to [checklists/BACKUP.md](../checklists/BACKUP.md).

### Step 5: Execute Migration in Production
1.  Deploy your build package to production.
2.  Trigger the database migration script via your CI/CD runner or container task:
    ```bash
    npm run db:migrate
    ```
3.  Immediately monitor logs for migration lock timeouts or errors.

### Step 6: Verify and Monitor Connection Pool
1.  Check the database connection count on your cloud metrics panel (e.g., AWS RDS).
2.  Ensure connection pools are released and error logs do not show connection pool exhaustion.
3.  If the migration fails or locks tables, execute your rollback plan immediately:
    ```bash
    npm run db:rollback
    ```
