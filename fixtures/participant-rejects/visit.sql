BEGIN TRANSACTION;
CREATE TABLE "visit_budget" (provider TEXT, service_day INTEGER, right_amount INTEGER, PRIMARY KEY(provider,service_day));
INSERT INTO "visit_budget" VALUES('p1',2,79);
COMMIT;
