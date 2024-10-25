 INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    -> Values ('Fluffy', '2020-10-15', 'vet', 'antibiotics');
  INSERT INTO petEvent
    ->     -> Values ('Hammy', '2020-10-16', 'vet', 'antibiotics');
INSERT INTO petPet
    -> values ('Hammy', 'Diane', 'hamster', "M" '2010-10-30', NULL);
 UPDATE petEvent SET remark="5 kittens,2 female, 2 male" WHERE eventdate="1995-05-15";
UPDATE petEvent SET remark="Claw" WHERE eventdate="1997-08-03";
UPDATE petPet SET death="2020-09-01" WHERE petname= "puffball";
 DELETE FROM petPet WHERE petname="Buffy";