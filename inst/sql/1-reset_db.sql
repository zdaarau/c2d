/*

# Reset database

## Relevant doc

- [SQL Key Words](https://www.postgresql.org/docs/current/sql-keywords-appendix.html)
- [DROP DATABASE](https://www.postgresql.org/docs/16/sql-dropdatabase.html)
- [CREATE DATABASE](https://www.postgresql.org/docs/16/sql-createdatabase.html)

*/

-- Switch to `rdb_admin` role (just to be explicit; has no effect on the Neon console)
SET ROLE rdb_admin;

-- Drop possibly existing DB
DROP DATABASE IF EXISTS rdb WITH (FORCE);

-- Create fresh DB
CREATE DATABASE rdb WITH OWNER rdb_admin;
