BEGIN TRANSACTION;
CREATE TABLE "care_links" (link_id TEXT PRIMARY KEY, resident TEXT, provider TEXT, from_day INTEGER, until_day INTEGER);
INSERT INTO "care_links" VALUES('c1','r1','p1',1,3);
COMMIT;
