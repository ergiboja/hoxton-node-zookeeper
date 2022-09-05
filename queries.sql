--Creating the table with the required columns/rows

CREATE TABLE animals (
id INTEGER ,
spices TEXT,
name TEXT,
age INTEGER,
fav_food TEXT,
was_feed INTEGER
PRIMARY KEY(id));

--Populating the tables with animals 
INSERT INTO "animals" 
(spices, name, age, fav_food,was_feed)
VALUES
("Monkey","Donkey Kong",10,"Bananas",1),
("Elephant","Charlie",11,"Watermelon",0),
("Lion","Simba",8,"Beef",1),
("Puma","Bolt",13,"Beef",0),
("Deer","Bambi",5,"Acorns",1)

--Updating props of an animal
UPDATE animals
SET age= 16, was_feed=1
WHERE id = 4;



--removing one of the aninmals 
DELETE FROM "animals"
WHERE id = 2;

--Removing Fav_food column
ALTER TABLE "animals"
DROP COLUMN "fav_food";


--Adding a new column called origin and filling its rows with info 
ALTER TABLE "animals"
ADD "origin" TEXT;
--filling the origin column with info 
UPDATE "animals"
SET origin="Tirana"
