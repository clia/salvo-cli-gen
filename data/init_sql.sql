-- 请先使用 cargo install sea-orm-cli \n
zh_CN.create_success_sea_orm__mysql_or_pgsql_fist_use
BEGIN;
INSERT INTO "users" ("id", "username", "password") VALUES ('cdd0e080-5bb1-4442-b6f7-2ba60dbd0555', 'zhangsan', '$argon2id$v=19$m=19456,t=2,p=1$rcosL5pOPdA2c7i4ZuLA4Q$s0JGh78UzMmu1qZMpVUA3b8kWYLXcZhw7uBfwhYDJ4A');
COMMIT;
