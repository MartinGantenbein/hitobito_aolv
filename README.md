# Hitobito AOLV
Dieser Hitobito Wagon definiert die Organisationsstruktur des Aargauer OL
Verbands mit seinen Mitgliedervereinen.

## Gruppen und Rollen
### Gruppen
Es sind drei Gruppenarten definiert: Verband, Verein und Team.

#### Beispiele
* *Verband:* AOLV
* *Verein:* OLG Kölliken
* *Team auf Ebene Verband:* Nachwuchskader, Ausbildungsklub, Vorstand
* *Team auf Ebene Verein:* Nachwuchsgruppe, OK Nationaler OL, Vorstand

### Rollen
Rollen definieren die Berechtigungen von Personen sowie deren Sichtbarkeit
aus darüber liegenden Ebenen.

Es sind die folgenden Rollen definiert:
* *Administrator:* Vollzugriff auf die eigene und alle darunter liegenden Gruppen.
* *Leiter:* Lesezugriff auf die eigene und alle darunter liegenden Gruppen.
* *Mitglied:* Lesezugriff auf die eigene Gruppe.
* *externes Mitglied:* Lesezugriff auf die eigene Gruppe, nicht sichtbar von
  Mitgliedern der darüber liegenden Ebene.

[=> Detaillierte Beschreibung](doc/roles.md)
    
## Datenschutz
Auf technischer Ebene (Datenübertragung via Internet) wird der Datenschutz
gewährleistet, indem AOLV-Hitobito ausschliesslich über verschlüsselte
Kommunikation erreichbar ist (https-Verbindung).

Das Rollenkonzept stellt darüber hinaus sicher, dass Person mit Login nur Daten
derjenigen Gruppe(n) sehen bzw. bearbeiten können, welchen sie zugeordnet sind.

[=> Detaillierte Beschreibung](doc/security.md)

## Allgemeine Hinweise
### Verbandsmitgliedschaft
Jede Person mit einer Rolle (ausgenommen _externes Mitglied_) im Verein oder in
einem Team des Vereins gilt als Mitglied des Vereins und somit automatisch auch
als Mitglied des Verbands. Jedes Verbandsmitglied ist Empfänger der AOLV-News,
die Zahl der Vereinsmitglieder auf der Info-Seite des Verbands wird gemäss der
oben genannten Regel bestimmt.

### Startseite
Nach dem Login wird dem Benutzer eine Startseite angezeigt, die seiner Rolle
entspricht. Benutzer mit mehreren Rollen können ihre Haupt-Rolle bestimmen, um
zu steuern, auf welcher Seite sie nach dem Login landen.

## Hinweise für Administratoren
[=> Seite für Administratoren](doc/administrator.md)
