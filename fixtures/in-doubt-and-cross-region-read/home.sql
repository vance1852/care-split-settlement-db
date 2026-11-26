BEGIN TRANSACTION;
CREATE TABLE "home_budget" (resident TEXT, service_day INTEGER, left_amount INTEGER, PRIMARY KEY(resident,service_day));
INSERT INTO "home_budget" VALUES('r7',11,110);
INSERT INTO "home_budget" VALUES('r8',11,200);
COMMIT;
