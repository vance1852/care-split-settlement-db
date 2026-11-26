BEGIN TRANSACTION;
CREATE TABLE "care_links" (link_id TEXT PRIMARY KEY, resident TEXT, provider TEXT, from_day INTEGER, until_day INTEGER);
INSERT INTO "care_links" VALUES('c1','r7','p4',8,13);
INSERT INTO "care_links" VALUES('c2','r7','p5',8,12);
INSERT INTO "care_links" VALUES('c3','r8','p4',9,12);
INSERT INTO "care_links" VALUES('c4','r8','p5',8,12);
COMMIT;
