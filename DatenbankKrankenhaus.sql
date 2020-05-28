--
-- Datenbank: `krankenhaus`
--
CREATE DATABASE IF NOT EXISTS `krankenhaus` DEFAULT CHARSET=utf8;
USE `krankenhaus`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `arzt`
--
CREATE TABLE arzt
(
  arztID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50)
);

--
-- Daten für Tabelle `arzt`
--

INSERT INTO arzt (name) VALUES
('Franz Meier'),
('Iris Mueller'),
('Heike Bachem'),
('Norbert Kurz');

--
-- Tabellenstruktur für Tabelle `patienten`
--
CREATE TABLE patienten
(
  patientenID INTEGER AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  vorname VARCHAR(50) NOT NULL,
  geschlecht VARCHAR(10),
  geburtsjahr YEAR,
  adresse VARCHAR(50)
  PRIMARY KEY (patientenID)
);

--
-- Daten für Tabelle `patienten`
--
INSERT INTO patienten (vorname, name, geschlecht, geburtsjahr, adresse) VALUES
  ('Arnd', 'Ziegel', 'maennlich', 1982, 'Bergstr. 2, 53113 Bonn'),
  ('Beate', 'Weiler', 'weiblich', 1966, 'Ahrweg 13, 53721 Siegburg'),
  ('Claus', 'Barth', 'maennlich', 1954, 'Am Breiberg 7, 53229 Bonn'),
  ('Dieter', 'Bligg', 'maennlich', 1960, 'Rheindamm 15, 53639 Koenigswinter');


--
-- Tabellenstruktur Medikament aufbauen
--
CREATE TABLE medikament
(
  medikamentID INTEGER AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (medikamentID)
);

--
-- Daten für Tabelle `medikament`
--
INSERT INTO medikament (name) VALUES
  ('Fluximed'),
  ('Otoveral'),
  ('Glyxomycin'),
  ('Syromoxin');

  --
  -- Tabellenstruktur für Tabelle `untersuchung`
  --
  CREATE TABLE untersuchung
  (
    untersuchungID INTEGER AUTO_INCREMENT NOT NULL,
    arztID INTEGER,
    patiendID INTEGER,
    datum DATE,
    FOREIGN KEY (patiendID)
    REFERENCES patienten(patientenID),
    FOREIGN KEY (arztID)
    REFERENCES arzt(arztID)
  );

  INSERT INTO untersuchung (arztID, patiendID, datum) VALUES
    (3,4,'2012-10-03'),
    (3,3,'2011-21-10'),
    (2,1,'2012-07-03'),
    (1,2,'2011-21-10');


--
-- Tabellenstruktur für Tabelle `verordnung`
--
CREATE TABLE verordnung
(
  untersuchungID INTEGER,
  medikamentID INTEGER,
  FOREIGN KEY (untersuchungID)
  REFERENCES untersuchung(untersuchungID),
  FOREIGN KEY (medikamentID)
  REFERENCES medikament(medikamentID)
);

--
-- Daten für Tabelle `behandelt`
--
INSERT INTO verordnung (untersuchungID,medikamentID) VALUES
    (1, 4),
    (2, 4),
    (3, 4),
   (4, 1);
