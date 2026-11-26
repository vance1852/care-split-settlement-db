BEGIN TRANSACTION;
CREATE TABLE "visit_budget" (provider TEXT, service_day INTEGER, right_amount INTEGER, PRIMARY KEY(provider,service_day));
INSERT INTO "visit_budget" VALUES('p4',11,150);
INSERT INTO "visit_budget" VALUES('p5',11,160);
COMMIT;
