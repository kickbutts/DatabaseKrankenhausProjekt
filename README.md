# Krankenhaus Datenbank Projekt #

[docker]: https://dev.mysql.com/downloads/workbench/

__Ein Docker Container um eine Datenbank für das Krankhausprojekt bereit zu stellen__

Dieser Docker Container stellt die Datenbank für das Krankhausprojekt bereit.
Ziel des Projektes ist, dass die Schülerinnen und Schüler ihr Wissen um SQL anwenden.

## Voraussetzungen ##

Voraussetzung zur Nutzung ist eine [Docker](docker) Installation.

## Verwendung ##

Um diesen Container zu verwenden baut man erstes ein Image. Diese Image enthält einen selbständigen MySQL Server.
Dieses Repository kann geklont werden, oder man kann Docker alles erledigen lassen (meiner Meinung nach das besser weg, wenn man Dockerfiles auf Github hostet):

```Shell
docker build -t mysqldb github.com/kickbutts/Databasekrankenhaus
```

Jetzt hat man eine Image mit dem Namen *mysqldb* auf dem System, welches eine MySQL Datenbank bereit stellen kann.
Der einfachste Weg diese zu starten ist:

```Shell
docker run -d -p 3306:3306 mysqldb
```

So startet man einen Contianer, der den laufenden MySQL Server enthält.
- Der Container stellt die [Datenbank für das Krankhausprojekt](https://github.com/kickbutts/DatabaseKrankenhausProjekt/blob/master/DatenbankKrankenhaus.sql) bereit.
- Der MySQL Server hat einen Benutzer mit dem Login *schueler* und dem Passwort *geheim*
- Die Datenbank ist auf port 3306 (standart MySQL Port) erreichbar.
- Der Benutzer *schueler* hat lesenden und schreibenden Zugriff auf die Datenbank.

## Aufgaben für die Schülerinnnen und Schüler ##
TODO
