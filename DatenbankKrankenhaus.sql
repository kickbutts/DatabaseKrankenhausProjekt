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
('Doctor Spock'),
('Doctor McCoy'),
('Doctor Who');

--
-- Tabellenstruktur für Tabelle `patienten`
--
CREATE TABLE patienten
(
  patientenID INTEGER AUTO_INCREMENT NOT NULL,
  name VARCHAR(50) NOT NULL,
  vorname VARCHAR(50) NOT NULL,
  Geschlecht VARCHAR(10),
  Geburtsjahr INTEGER,
  adresse VARCHAR(50)
  PRIMARY KEY (patientenID)
);

--
-- Daten für Tabelle `patienten`
--
INSERT INTO patienten (name, vorname, krankenkasse, behandelnderArzt) VALUES
  ('vorname VARCHAR(50) NOT NULL', 'Peter', 'AOK', '1'),
  ('Schmidt', 'Olaf', 'DFG', '2'),
  ('Peters', 'Otto', 'QWE', '3');


--
-- Tabellenstruktur für Tabelle `behandelt`
--
/*CREATE TABLE behandelt
(
  patient INTEGER,
  arzt INTEGER,
  FOREIGN KEY (patient)
  REFERENCES patienten(patientenID),
  FOREIGN KEY (arzt)
  REFERENCES arzt(arztID)
);

--
-- Daten für Tabelle `behandelt`
--
INSERT INTO behandelt (patient,arzt) VALUES
    (1, 1),
    (2, 2),
   (3, 3);
*/
