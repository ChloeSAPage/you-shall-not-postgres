CREATE TABLE
  "races" (
    "id" bigserial PRIMARY KEY,
    "race" VARCHAR(100) NOT NULL,
    "sub_race" VARCHAR(100)
  );

CREATE TABLE
  "preferences" ("id" bigserial PRIMARY KEY, "item" TEXT NOT NULL);

CREATE TABLE
  "character_preferences" (
    "char_id" BIGINT NOT NULL REFERENCES characters (id),
    "pref_id" BIGINT NOT NULL REFERENCES preferences (id),
    PRIMARY KEY (char_id, pref_id)
  );

CREATE TABLE
  "characters" (
    "id" bigserial PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "race_id" BIGINT NOT NULL REFERENCES races (id),
    "height" INT NOT NULL,
    "combat_prof" VARCHAR(100) NOT NULL,
    "aliases" TEXT,
    "occupation" VARCHAR(100)
  );