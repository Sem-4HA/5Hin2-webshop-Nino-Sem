--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  adviesprijs NUMERIC (10, 2),
  voorraad_id INTEGER
);

CREATE TABLE voorraad (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  voorraad TEXT
);

  CREATE TABLE winkels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  filiaal TEXT
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, adviesprijs, voorraad_id) values ('Piano Yamaha P-127', 'Yamaha P-125 is de opvolger van de succesvolle Yamaha P-115, deze piano komt met nieuwe functies zoals drumtracks, vleugelklanken en nog meer.', '100435', 849.99, 950, 1);
insert into products (name, description, code, price, adviesprijs, voorraad_id) values ('Post Mortem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11, 30, 2);
insert into products (name, description, code, price, adviesprijs, voorraad_id) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 40, 1);
insert into products (name, description, code, price, adviesprijs, voorraad_id) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 16, 3);
insert into products (name, description, code, price, adviesprijs,  voorraad_id) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 17, 1);
insert into products (name, description, code, price, adviesprijs, voorraad_id) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 40, 3);

insert into voorraad (name) values ('ja');
insert into voorraad (name) values ('nee');
insert into voorraad (name) values ('binnekort');

insert into winkels (name) values ('Rotterdam');
insert into winkels (name) values ('Utrecht');
insert into winkels (name) values ('Amsterdam');
insert into winkels (name) values ('Groningen');
insert into winkels (name) values ('Limburg');