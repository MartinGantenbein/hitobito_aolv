# Hitobito AOLV
Dieser Hitobito Wagon definiert die Organisationsstruktur des Aargauer OL
Verbands mit seinen Mitgliedervereinen.

## Gruppen und Rollen
### Gruppen
Es sind drei Gruppenarten definiert: Verband, Verein und Team.

#### Beispiele
*Verband:* AOLV
*Verein:* OLG Kölliken
*Team auf Ebene Verband:* Nachwuchskader, Ausbildungsklub, Vorstand
*Team auf Ebene Verein:* Nachwuchsgruppe, OK Nationaler OL, Vorstand

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

[=> Detaillierte Beschreibung](doc/security)

## Allgemeine Hinweise
### Empfang AOLV-News
Alle Personen mit einer Rolle in mindestens einem Verein oder Team gelten 
als Mitglieder des Verbands und erhalten die AOLV-News, ausgenommen sind nur
Personen mit der Rolle _externes Mitglied_ (falls sie keine andere Rolle
in einem Verein oder Team haben).

### Mitgliederzahlen
Auf der Info-Seite jeder Gruppe (Verband, Verein, Teams) werden die
Mitgliederzahlen der jeweiligen Untergruppen angezeigt. Hier werden die
Personen mit mindestens einer Rolle (ohne _externes Mitglied_) in
der Untergruppe oder einem Team der Untergruppe gezählt.

### Mehrere Rollen / Haupt-Rolle
Jeder Person kann eine beliebige Anzahl von Rollen zugewiesen werden. So kann
die selbe Person Mitglied von mehreren Vereinen sein und gleichzeitig als
Administrator in einem Team des Verbands berechtigt sein. Für jede Person
kann die Haupt-Rolle gesetzt werden, welche bestimmt, auf welcher Startseite
der Benutzer nach dem Login landet. Administratoren haben die Möglichkeit,
die Haupt-Rolle zu setzen, dies ist aber insbesondere bei Personen mit mehreren
Vereinszugehörigkeiten nicht sinnvoll. Besser ist es, es jedem Mitglied selbst
zu überlassen, welche Rolle es als Haupt-Rolle wählt.

## Hinweise für Administratoren
### Hierarchie der Mitgliedschaften
Bei der Zuordnung von Rollen stellt sich die Frage, ob ein Mitglied eines Teams
auch als Mitglied des Vereins (bzw. der übergeordneten Gruppe) zugeordnet werden
soll. Aus Sicht des Verbands spielt dies keine Rolle, wie oben erklärt erhält
die Person in beiden Fällen die AOLV-News und sie wird in beiden Fällen bei den
Mitgliederzahlen korrekt berücksichtigt.

Beispielsweise muss ein Mitglied der Nachwuchsgruppe nicht unbedingt als
Vereinsmitglied zugeordnet werden, es erhält auch so die AOLV-News und wird in
der Zählung der Mitglieder berücksichtigt. Es ist trotzdem zu empfehlen, alle
Vereinsmitglieder mit der Rolle _Mitglied_ dem Verein zuzuordnen, auch wenn sie
eine Rolle in einem Team des Vereins haben. Dies schafft Klarheit und
vereinfacht die Erstellung von korrekten (vollständigen) Datenexporten,
Mailinglisten oder Adressetiketten.

### externe Mitglieder
Unter Umständen haben Vereine Teams mit Mitglieder, die nicht Vereinsmitglieder
sind. Diese Personen müssen dem Team mit der Rolle _externes Mitglied_
zugeordnet werden, damit sie bei der Mitgliederzählung und beim News-Versand
korrekt ausgeschlossen werden.

#### Beispiele
* vereinsexterne OK-Mitglieder
* Lagerteilnehmer aus anderen Vereinen
* Kursteilnehmer, die (noch) nicht Vereinsmitglied sind
* J+S-Coach, der nicht Vereinsmitglied ist (aber im Team _Nachwuchsgruppe_ sein
sollte um die entsprechenden Informationen zu erhalten)
