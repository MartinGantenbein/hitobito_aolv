# Hitobito AOLV
Dieser Hitobito Wagon definiert die Organisationsstruktur des Aargauer OL
Verbands mit seinen Mitgliedervereinen.

## Einführung
Eine allgemeine (nicht AOLV-spezifische) Benutzeranleitung ist unter
[hitobito.readthedocs.io](https://hitobito.readthedocs.io/de/latest/) zu finden.

Hitobito kennt _Personen_, _Gruppen_ und _Rollen_: Die Zuordnung von _Personen_
zu _Gruppen_ erfolgt über die _Rolle_. Jeder _Person_ kann eine beliebige Anzahl
von _Rollen_ zugeteilt werden, somit kann jede _Person_ Mitglied einer
beliebigen Anzahl von _Gruppen_ sein.

## Personen, Gruppen und Rollen
### Personen
Zusätzlich zu gewöhnlichen Personen, können auch "Firmenpersonen" erfasst werden.

### Gruppen
Es sind vier Gruppenarten definiert: Verband, Verein, Team und Gruppierung. Verband,
Vereine und Teams bilden eine hierarchische Struktur (eine sogenannte Baumstruktur):
* Der Verband bildet die Wurzel des Hierarchie-Baums
* Vereine sind direkt ihrem Verband zugeordnet
* Teams können unterhalb von Verband, Verein oder Team erstellt werden.

Gruppierungen dienen der Einteilung von Personen innerhalb einer Gruppe. Gruppierungen
können innerhalb jeder Gruppenart (Verband, Verein, Team, Gruppierung) erstellt werden.

#### Beispiele
* *Verband:* AOLV
* *Verein unter Verband:* OLG Kölliken
* *Team unter Verband:* Nachwuchskader, Stützpunkt
* *Gruppierung im Verband:* Vorstand
* *Team unter Verein:* Nachwuchsgruppe, OK Nationaler OL
* *Gruppierung im Verein:* Heftempfänger, Ehrenmitglieder
* *Team unter Team:* Trainingslager im Nachwuchskader
* *Gruppierung im Team:* Trainer im Nachwuchskader, Ressort im OK Nationaler OL
* *Gruppierung in Gruppierung:* Schulen oder Sponsoren in "Heftempfänger"

### Rollen
Rollen definieren die Berechtigungen von Personen sowie deren Sichtbarkeit
aus darüber liegenden Ebenen.

Es sind die folgenden Rollen definiert:
* *Administrator:* Vollzugriff auf die eigene Gruppe und alle darunter liegenden Gruppen.
* *Leiter:* Lesezugriff auf die eigene Gruppe und alle darunter liegenden Gruppen.
* *Lokaler Administrator:* Vollzugriff auf die eigene Gruppe mit ihren Gruppierungen.
* *Mitglied:* Lesezugriff auf die eigene Gruppe.
* *externes Mitglied:* Lesezugriff auf die eigene Gruppe, nur sichtbar für Mitglieder
der eigenen Gruppe und Administratoren und Leiter des direkt darüber liegenden Vereins oder Teams.

[=> Detaillierte Beschreibung](doc/roles.md)
    
## Datenschutz
Auf technischer Ebene (Datenübertragung via Internet) wird der Datenschutz
gewährleistet, indem AOLV-Hitobito ausschliesslich über verschlüsselte
Kommunikation erreichbar ist (https-Verbindung).

Das Rollenkonzept stellt darüber hinaus sicher, dass Person mit Login nur Daten
derjenigen Gruppe(n) sehen bzw. bearbeiten können, welchen sie zugeordnet sind.

[=> Detaillierte Beschreibung](doc/security.md)

### Datenschutzrichtlinien
Es gelten die [Datenschutzrichtlinien des AOLV](https://aolv.ch/sites/default/files/Datenschutzrichtlinie.pdf)
sowie gegebenenfalls diejenigen des jeweiligen Vereins. Technische Details (Cookies, Tracking,
IP-Adressen, usw.) sind in der [technischen Datenschutzerklärung](https://adressen.aolv.ch/datenschutz.html)
zu finden.

## Allgemeine Hinweise
### Verbandsmitgliedschaft
Jede Person mit einer Rolle (ausgenommen _externes Mitglied_) im Verein oder in einem Team
(oder Gruppierung) des Vereins gilt als Mitglied des Vereins und somit automatisch auch als
Mitglied des Verbands. Jedes Verbandsmitglied ist Empfänger der AOLV-News, die Zahl der
Vereinsmitglieder auf der Info-Seite des Verbands wird gemäss der oben genannten Regel bestimmt.

#### Anzahl Mitglieder
Auf der Info-Seite jeder Gruppe wird für jede Untergruppe die Anzahl Mitglieder (ohne Externe)
angezeigt (das heisst, die Anzahl Mitglieder der Vereine ist auf der Info-Seite des Verbands
zu finden). Es werden vier Spalten angezeigt:
* _-20_: Mitglieder (ohne Externe), die im aktuellen Jahr 20jährig werden oder jünger sind
* _21-_: Mitglieder (ohne Externe), die im aktuellen Jahr 21jährig werden oder älter sind
* _?_: Mitglieder (ohne Externe), für die kein Geburtsdatum erfasst ist
* _Total_: Anzahl Mitglieder der Gruppe (ohne Externe)

### Startseite
Nach dem Login wird dem Benutzer eine Startseite angezeigt, die seiner Rolle
entspricht. Benutzer mit mehreren Rollen können ihre Haupt-Rolle bestimmen, um
zu steuern, auf welcher Seite sie nach dem Login landen.

## Hinweise für Administratoren
[=> Seite für Administratoren](doc/administrator.md)
