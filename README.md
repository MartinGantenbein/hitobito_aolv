# Hitobito AOLV

Dieser Hitobito Wagon definiert die Organisationsstruktur des Aargauer OL
Verbands mit seinen Mitgliedervereinen.

## Ebenen, Gruppen und Rollen
### Ebenen
Es sind zwei Ebenen definiert: Verband und Vereine. Auf Ebene Verband gibt es
die Gruppe "AOLV" mit Untergruppen wie "Nachwuchskader" oder "AOLV-Vorstand".
Auf Ebene Verein besteht eine Gruppe für jeden Mitgliederverein des AOLV.

### Gruppen
Es sind drei Gruppenarten definiert: Verband, Verein und Team. Die Gruppe
Verband kann nur auf der Ebene Verband definiert werden, die Gruppe Verein
nur auf der Ebene Verein. Gruppen der Art Team sind auf beiden Ebenen möglich,
können aber nicht als eigenständige Gruppe angelegt werden sondern nur als
Untergruppe eines Verbands, Vereins oder Teams. Die Vereine und der Verband
sind fix vorgegeben, Teams können durch den jeweiligen Gruppenadministrator
frei erstellt werden.

### Rollen
Rollen definieren die Berechtigungen von Personen sowie deren Sichtbarkeit
aus darüber liegenden Ebenen. Für jede Gruppenart sind spezifische Rollen
definiert.

Vereinfacht sind die folgenden Rollen definiert:
* Administrator: Vollzugriff auf die eigene und alle darunter liegenden Gruppen.
* Leiter: Lesezugriff auf die eigene und alle darunter liegenden Gruppen.
* Mitglied: Lesezugriff auf die eigene Gruppe.
* externes Mitglied: Lesezugriff auf die eigene Gruppe, nicht sichtbar von
  Mitgliedern der darüber liegenden Ebene.

Eine genauere Beschreibung der Rollen ist im [doc Ordner](doc/roles.md) zu finden.

    
## Hinweise
### Keine Rollen "Administrator" und "Mitglied" im Verband
Für die Gruppenart Verband existiert ausschliesslich die Rolle "Leiter". Es ist
nur ein Benutzerkonto für den Verband vorgesehen, für alle weiteren Rollen
innerhalb des Verbandes müssen entsprechende Teams erstellt werden.
Vorstandsmitglieder sind nicht Mitglieder des Verbands sondern des Teams
"Vorstand". So erhalten diese Personen keinen Zugriff auf die Mitgliederdaten
der Vereine oder der anderen Teams des Verbands (z.B. des NWK).

### Mehrere Rollen / Haupt-Rolle
Jeder Person kann eine beliebige Anzahl von Rollen zugewiesen werden. So kann
die selbe Person Mitglied von mehreren Vereinen sein und gleichzeitig als
Administrator in einem Team des Verbands berechtigt sein. Für jede Person
kann die Haupt-Rolle gesetzt werden, welche bestimmt, auf welcher Startseite
der Benutzer nach dem Login landet.

### Empfang AOLV-News
Alle Personen mit einer Rolle in mindestens einem Verein oder Team gelten 
als Mitglieder des Verbands und erhalten die AOLV-News, ausgenommen sind nur
Personen mit der Rolle "externes Mitglied" (falls sie keine andere Rolle
in einem Verein oder Team haben).

### Mitgliederzahlen
Auf der Info-Seite jeder Gruppe (Verband, Verein, Teams) werden die
Mitgliederzahlen der jeweiligen Untergruppen angezeigt. Hier werden die
Personen mit einer (oder mehreren) Rollen (ohne Rolle "externes Mitglied") in
der Untergruppe oder einem Team gezählt.

### Hierarchie der Mitgliedschaften
Bei der Zuordnung von Rollen stellt sich die Frage, ob ein Mitglied eines Teams
auch als Mitglied des Vereins (bzw. der übergeordneten Gruppe) zugeordnet werden
soll. Aus Sicht des Verbands spielt dies keine Rolle, wie oben erklärt erhält
die Person in beiden Fällen die AOLV-News und sie wird in beiden Fällen bei den
Mitgliederzahlen korrekt berücksichtigt.

Bei der Administration im Verein bzw. Team ist zu berücksichtigen:

* Mitglieder mit Login sehen immer nur die Mitglieder ihrer Gruppe. Wenn also
  ein Mitglied nur einem Team zugeordnet wird, dann kann es nur die
  Mitgliederliste des Teams sehen aber nicht die Mitgliederliste des Vereins.
* Für Mitglieder ohne Login spielt es keine Rolle, ob sie nur ihrem Team
  (z.B. Nachwuchsgruppe) oder dem Team und den Verein als Mitglied zugeordnet
  sind. Es müssen aber die folgenden Unterschiede berücksichtigt werden:
  * Vorübergehende Teammitgliedschaften: Wenn ein Mitglied ein Team verlässt
    (z.B. Austritt aus dem Vorstand), dann bleibt es in der Regel Mitglied des
    Vereins. Der administative Aufwand (und das Risiko für Fehler) ist kleiner,
    wenn beide Rollen erfasst werden.
  * Mailinglisten, Exporte: Wenn Mailinglisten oder Datenexporte über die Rollen
    definiert werden, dann sollte diese Definition der jeweiligen Art der
    Datenerfassung angepasst werden. Wenn sichergestellt ist, dass sämtliche
    Vereinsmitglieder eine Rolle im Verein haben, dann genügt es, hier die
    Rollen im Verein auszuwählen. Falls aber Vereinsmitglieder nur eine
    Rolle in einem Team haben, dann müssen bei der Definition auch die
    entsprechenden Rollen in den Teams berücksichtigt werden, wenn der Export
    sämtliche Vereinsmitglieder enthalten soll.
  * Sichere und somit empfohlene Variante: Mitgliedschaften in allen zutreffenden
    Gruppen definieren (also z.B. im Vorstand und im Verein) und gleichzeitig
    trotzdem bei der Definition von Exporten oder Mailinglisten sämtliche
    Untergruppen mitberücksichtigen.
