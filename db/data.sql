-- Insert races
INSERT INTO races (race, sub_race) VALUES ('Human', NULL);
INSERT INTO races (race, sub_race) VALUES ('Wizard', NULL);
INSERT INTO races (race, sub_race) VALUES ('Elf', NULL);
INSERT INTO races (race, sub_race) VALUES ('Dwarf', NULL);
INSERT INTO races (race, sub_race) VALUES ('Hobbit', NULL);
INSERT INTO races (race, sub_race) VALUES ('Maiar', NULL);
INSERT INTO races (race, sub_race) VALUES ('Unknown', NULL);

-- Insert preferences (example items)
INSERT INTO preferences (item) VALUES ('Sword');
INSERT INTO preferences (item) VALUES ('Staff');
INSERT INTO preferences (item) VALUES ('Ring');
INSERT INTO preferences (item) VALUES ('Bow');
INSERT INTO preferences (item) VALUES ('Axe');

-- Insert characters
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Aragorn', 1, 198, 'Swordsmanship', 'Strider', 'Ranger');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Gandalf', 2, 180, 'Magic', 'Mithrandir', 'Wizard');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Galadriel', 3, 200, 'Magic', NULL, 'Lady of Lothlórien');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Gimli', 4, 140, 'Axe', NULL, 'Warrior');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Legolas', 3, 190, 'Archery', NULL, 'Prince of the Woodland Realm');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Frodo', 5, 100, 'Dagger', NULL, 'Ring-bearer');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Sam', 5, 102, 'Dagger', 'Samwise', 'Gardener');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Merry', 5, 102, 'Dagger', 'Meriadoc Brandybuck', 'Esquire of Rohan');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Pippin', 5, 102, 'Dagger', 'Peregrin Took', 'Thain of the Shire');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Boromir', 1, 185, 'Swordsmanship', NULL, 'Captain of the White Tower');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Éowyn', 1, 170, 'Swordsmanship', 'Dernhelm', 'Shieldmaiden');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Sauron', 6, 300, 'Magic', NULL, 'Dark Lord');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Bilbo', 5, 100, 'Dagger', NULL, 'Adventurer');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Gollum', 5, 120, 'None', 'Sméagol', 'None');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Tom Bombadil', 7, 170, 'None', NULL, 'Unknown');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Saruman', 2, 200, 'Magic', 'Curunír', 'Wizard');
INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) VALUES ('Rosie Cotton', 5, 100, 'None', NULL, 'Farmer');

-- Example of character preferences
INSERT INTO character_preferences (char_id, pref_id) VALUES (1, 1); -- Aragorn prefers Sword
INSERT INTO character_preferences (char_id, pref_id) VALUES (2, 2); -- Gandalf prefers Staff
INSERT INTO character_preferences (char_id, pref_id) VALUES (6, 3); -- Frodo prefers Ring
INSERT INTO character_preferences (char_id, pref_id) VALUES (5, 4); -- Legolas prefers Bow
INSERT INTO character_preferences (char_id, pref_id) VALUES (4, 5); -- Gimli prefers Axe