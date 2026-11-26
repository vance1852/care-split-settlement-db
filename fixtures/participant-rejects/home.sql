BEGIN TRANSACTION;
CREATE TABLE "home_budget" (resident TEXT, service_day INTEGER, left_amount INTEGER, PRIMARY KEY(resident,service_day));
INSERT INTO "home_budget" VALUES('r1',2,150);
COMMIT;
