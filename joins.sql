# YOUR SQL CODE GOES HERE

-- 1. Which collars have a known owner? Display only collars with known owners and those owners' names.

SELECT lost_dog_collars.dog_name, dog_owners.name
FROM dog_owners
JOIN lost_dog_collars
ON (lost_dog_collars.dog_name = dog_owners.dog_name);

-- 2. For which collars is there no known owner? Display only collars without known owners.

SELECT lost_dog_collars.dog_name
FROM lost_dog_collars
LEFT JOIN dog_owners
ON lost_dog_collars.dog_name = dog_owners.dog_name
WHERE dog_owners.dog_name IS NULL;

-- 3. What collars are in our possession? Display all collars in our possession. If an owner exists for a given collar, display that also.

SELECT lost_dog_collars.dog_name, dog_owners.name
FROM lost_dog_collars
LEFT JOIN dog_owners
ON lost_dog_collars.dog_name = dog_owners.dog_name;

-- 4. What owners do we know about? Display all owners known to us. If a collar matches that owner, display the collar also.

SELECT dog_owners.name, lost_dog_collars.dog_name
FROM dog_owners
LEFT JOIN lost_dog_collars
ON dog_owners.dog_name = lost_dog_collars.dog_name;

dog_park=# SELECT * FROM dog_owners;
 id |  name   | dog_name
----+---------+----------
  1 | Omid    | Bronson
  2 | Evan    | Bogie
  3 | Whitney | Gilly
  4 | Spencer | Lilly
  5 | Dan     | Apple
  6 | Dan     | Linux

dog_park=# SELECT * FROM lost_dog_collars;
 id | dog_name
----+----------
  1 | Bogie
  2 | Lassie
  3 | Gilly
  4 | Lilly
  5 | Fido
  6 | Linux
  7 | Bronson
  8 | Goose
